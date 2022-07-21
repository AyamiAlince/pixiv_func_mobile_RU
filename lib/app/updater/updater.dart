import 'dart:io';
import 'dart:isolate';

import 'package:app_installer/app_installer.dart';
import 'package:dio/dio.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pixiv_func_mobile/app/platform/api/platform_api.dart';

class Updater {
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static final ReceivePort _hostReceivePort = ReceivePort()..listen(_hostReceive);

  static Future<void> init() async {
    const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('ic_launcher_foreground');
    await flutterLocalNotificationsPlugin.initialize(
      const InitializationSettings(android: initializationSettingsAndroid),
    );
  }

  static Future<void> startUpdate(String url, String versionName) async {
    const storageStatus = Permission.storage;

    if (!await storageStatus.isGranted) {
      await storageStatus.request();
      if (!await storageStatus.isGranted) {
        PlatformApi.toast('拒绝了权限,取消更新');
        return;
      }
    }
    final storageDir = await getExternalStorageDirectory();
    final saveDir = Directory('${storageDir!.path}/update');
    if (!saveDir.parent.existsSync()) {
      saveDir.createSync();
    }
    final savePath = join(saveDir.path, '$versionName.apk');
    if (File(savePath).existsSync()) {
      AppInstaller.installApk(savePath);
      return;
    }
    PlatformApi.toast('开始下载');
    Isolate.spawn(_downloadTask, _UpdateProps(_hostReceivePort.sendPort, url, savePath));
  }

  static Future<void> _progressNotification(int progress, [bool isComplete = false]) async {
    final AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'update app',
      'update app',
      tag: 'update app',
      channelDescription: 'Pixiv Func 更新',
      channelShowBadge: false,
      importance: Importance.max,
      priority: Priority.high,
      onlyAlertOnce: true,
      showProgress: true,
      maxProgress: 100,
      progress: progress,
      enableVibration: false,
      playSound: false,
    );
    final NotificationDetails platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);
    if (!isComplete) {
      await flutterLocalNotificationsPlugin.show(44444, 'Pixiv Func更新', '下载进度:$progress%', platformChannelSpecifics);
    } else {
      await flutterLocalNotificationsPlugin.cancel(44444, tag: 'update app');
    }
  }

  static Future<void> _hostReceive(dynamic message) async {
    if (message is _DownloadProgress) {
      await _progressNotification(message.progress);
    } else if (message is _DownloadCompleted) {
      await _progressNotification(100, true);
      AppInstaller.installApk(message.savePath);
    }
  }

  static Future<void> _downloadTask(_UpdateProps props) async {
    props.hostSendPort.send(_DownloadProgress(0));
    Dio(
      BaseOptions(
        receiveTimeout: 1200000,
        connectTimeout: 1200000,
      ),
    ).download(props.url, props.savePath, onReceiveProgress: (int count, int total) {
      props.hostSendPort.send(_DownloadProgress(((count / total) * 100).toInt()));
    }).then((response) {
      props.hostSendPort.send(_DownloadCompleted(props.savePath));
    });
  }
}

class _UpdateProps {
  final SendPort hostSendPort;
  final String url;
  final String savePath;

  _UpdateProps(this.hostSendPort, this.url, this.savePath);
}

class _DownloadProgress {
  final int progress;

  _DownloadProgress(this.progress);
}

class _DownloadCompleted {
  final String savePath;

  _DownloadCompleted(this.savePath);
}
