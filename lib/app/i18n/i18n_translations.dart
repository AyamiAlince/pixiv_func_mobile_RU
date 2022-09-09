import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pixiv_func_mobile/app/i18n/i18n.dart';

import 'i18n_expansion.dart';

class I18nTranslations extends Translations {
  static List<I18nExpansion> expansions = [];

  final Map<String, Map<String, String>> _keys = {
    'zh_CN': {
      I18n.aboutPageTitle: '关于',
      I18n.accountPageTitle: '账号管理',
      I18n.blockTagPageTitle: '屏蔽标签管理',
      I18n.downloaderPageTitle: '下载任务',
      I18n.historyPageTitle: '历史记录',
      I18n.themeSettingsPageTitle: '主题',
      I18n.languageSettingsPageTitle: '语言',
      I18n.imageSourceSettingsPageTitle: '图片源',
      I18n.previewQualitySettingsPageTitle: '预览质量',
      I18n.scaleQualitySettingsPageTitle: '缩放质量',
      I18n.meSettingsPageTitle: '账号设置',
      I18n.meProfileSettingsPageTitle: '个人资料',
      I18n.meWorkspaceSettingsPageTitle: '工作环境',
      I18n.meWebSettingsPageTitle: 'Web设置',
      I18n.loginPageTitle: '注册 或 登录',
      I18n.copiedToClipboardHint: '已复制到剪贴板',
      I18n.cancel: '取消',
      I18n.confirm: '确定',
      I18n.dark: '黑暗',
      I18n.light: '明亮',
      I18n.followSystem: '跟随系统',
      I18n.illust: '插画',
      I18n.manga: '漫画',
      I18n.novel: '小说',
      I18n.illustAndManga: '插画&漫画',
      I18n.user: '用户',
      I18n.live: '直播',
      I18n.restrictPublic: '公开',
      I18n.restrictPrivate: '悄悄',
      I18n.account: '账号',
      I18n.versionUpdate: '版本更新',
      I18n.versionUpdateHint: '当前版本:%s,最新版本:%s,点击前往查看',
      I18n.checkVersionHint: '检查版本更新',
      I18n.hasNewVersionHint: '发现新版本 点击更新',
      I18n.noNewVersionHint: '已经是最新版本',
      I18n.checkingVersionHint: '正在检查更新...',
      I18n.checkVersionErrorHint: '检查更新失败 点击重试',
      I18n.contactAuthor: '联系作者',
      I18n.getHelp: '获取帮助',
      I18n.currentVersion: '当前版本:%s',
      I18n.openTagPage: '打开标签页',
      I18n.confirmLogoutHint: '确认退出此账号',
      I18n.next: '下一步',
      I18n.selectFavoriteTheme: '选择喜欢的主题',
      I18n.laterChangeInSettings: '稍后您可以在设置中进行相应变更',
      I18n.browsingHistory: '历史记录',
      I18n.deleteThisHistory: '删除这条历史记录',
      I18n.deleteThisHistoryHint: '删除后将不可恢复',
      I18n.all: '全部',
      I18n.recommend: '推荐',
      I18n.comment: '评论',
      I18n.illustIdPageTitle: '插画%s',
      I18n.illustIdNotFound: '插画%s不存在',
      I18n.illustAgeLimitHint: '插画%s是%s,请前往Web设置中修改年龄限制',
      I18n.send: '发送',
      I18n.commentSuccessHint: '评论成功',
      I18n.replySuccessHint: '回复成功',
      I18n.replyFailedHint: '回复失败,欲回复的评论不存在',
      I18n.commentFailedHint: '评论失败',
      I18n.deleteCommentSuccessHint: '删除评论成功',
      I18n.deleteCommentFailedHint: '删除评论失败',
      I18n.commentIllust: '评论 插画',
      I18n.replyComment: '回复 %s',
      I18n.selectImage: '选择图片',
      I18n.reset: '重置',
      I18n.reselect: '重选',
      I18n.playDuration: '播放时长',
      I18n.liveEnd: '直播已经结束',
      I18n.register: '注册',
      I18n.login: '登录',
      I18n.localReverseProxy: '本地反向代理',
      I18n.reverseProxyHint: 'Pixiv官方页面无法注册或登陆时 建议开启本地反向代理',
      I18n.getMoreHelp: '获取更多帮助 >>',
      I18n.useLoginWithClipboardHint: '或使用\n长按头像复制账号数据',
      I18n.useLoginWithClipboard: '使用剪贴板数据登录',
      I18n.loginAgree: '登录即表示您同意',
      I18n.userAgreement: '《Pixiv Func用户使用协议》',
      I18n.password: '密码',
      I18n.pixivAccountHint: '邮箱地址或pixiv ID',
      I18n.clipboard: '剪贴板',
      I18n.pasteIn: '贴入',
      I18n.noEntry: '无法输入?',
      I18n.following: '关注者',
      I18n.everyone: '所有人',
      I18n.myPixiv: '好P友',
      I18n.rankingItemDay: '每日',
      I18n.rankingItemDayR18: '每日(R-18)',
      I18n.rankingItemDayMale: '每日(男性欢迎)',
      I18n.rankingItemDayMaleR18: '每日(男性欢迎 & R-18)',
      I18n.rankingItemDayFemale: '每日(女性欢迎)',
      I18n.rankingItemDayFemaleR18: '每日(女性欢迎 & R-18)',
      I18n.rankingItemWeek: '每周',
      I18n.rankingItemWeekR18: '每周(R-18)',
      I18n.rankingItemWeekOriginal: '每周(原创)',
      I18n.rankingItemWeekRookie: '每周(新人)',
      I18n.rankingItemMonth: '每月',
      I18n.search: '搜索',
      I18n.searchItem: '搜索: %s',
      I18n.keyword: '关键字',
      I18n.illustId: '插画ID',
      I18n.novelId: '小说ID',
      I18n.userId: '用户ID',
      I18n.searchImage: '搜图',
      I18n.searchHint: '搜索关键字或ID',
      I18n.searchDateLimitNo: '无限制',
      I18n.searchDateLimitDay: '一天内',
      I18n.searchDateLimitWeek: '一周内',
      I18n.searchDateLimitMonth: '一月内',
      I18n.searchDateLimitHalfYear: '半年内',
      I18n.searchDateLimitYear: '一年内',
      I18n.searchDateLimitCustom: '自定义',
      I18n.searchTarget: '搜索方式',
      I18n.searchSort: '搜索排序',
      I18n.searchDateRange: '时间范围',
      I18n.searchBookmarkCount: '收藏数量',
      I18n.searchBookmarkCountNo: '不限制',
      I18n.searchBookmarkCountMore: '%s以上',
      I18n.searchSortDateDesc: '时间降序',
      I18n.searchSortDateAsc: '时间升序',
      I18n.searchSortPopularDesc: '热度降序',
      I18n.searchTargetPartialMatchForTags: '标签(部分)',
      I18n.searchTargetExactMatchForTags: '标签(完全)',
      I18n.searchTargetTitleAndCaption: '标题&简介',
      I18n.searchTargetText: '文本',
      I18n.searchTargetKeyword: '关键字',
      I18n.useCustomImageSource: '使用自定义图片源',
      I18n.mediumImage: '中等',
      I18n.largeImage: '大图',
      I18n.originalImage: '原图',
      I18n.resolution: '分辨率:%s',
      I18n.summary: '介绍',
      I18n.uploadDate: '上传日期:%s',
      I18n.startGetUgoiraInfo: '开始获取动图信息',
      I18n.getUgoiraInfoFailed: '获取动图信息失败',
      I18n.startDownloadUgoira: '开始下载动图压缩包',
      I18n.downloadUgoiraFailed: '下载动图压缩包失败',
      I18n.startGenerateImage: '开始生成图片 共%s帧',
      I18n.startCompositeImage: '开始合成图片 共%s帧',
      I18n.userIdPageTitle: '用户ID%s',
      I18n.userIdNotFound: '用户ID%s不存在',
      I18n.work: '作品',
      I18n.bookmarked: '收藏',
      I18n.about: '关于',
      I18n.fans: '粉丝',
      I18n.ageLimit: '年龄限制',
      I18n.allAge: '全年龄',
      I18n.publicityPublic: '公开',
      I18n.publicityPrivate: '私密',
      I18n.publicityMyPixiv: '好P友',
      I18n.modify: '修改',
      I18n.delete: '删除',
      I18n.avatar: '头像',
      I18n.nickname: '昵称',
      I18n.homepage: '主页',
      I18n.gender: '性别',
      I18n.genderMale: '男性',
      I18n.genderFemale: '女性',
      I18n.genderUnknown: '未选择',
      I18n.address: '地址',
      I18n.country: '国家',
      I18n.birthday: '生日',
      I18n.job: '工作',
      I18n.introduction: '简介',
      I18n.introductionHint: '写点什么吧',
      I18n.updateProfile: '更新个人资料',
      I18n.workspacePc: '电脑',
      I18n.workspaceMonitor: '显示器',
      I18n.workspaceTool: '软件',
      I18n.workspaceScanner: '扫描仪',
      I18n.workspaceTablet: '数位板',
      I18n.workspaceMouse: '鼠标',
      I18n.workspacePrinter: '打印机',
      I18n.workspaceDesktop: '桌子上的东西',
      I18n.workspaceMusic: '画画时的音乐',
      I18n.workspaceDesk: '桌子',
      I18n.workspaceChair: '椅子',
      I18n.workspaceOther: '其他',
      I18n.workspaceUpdate: '更新工作环境',
      I18n.followed: '已关注',
      I18n.follow: '关注',
      I18n.followUser: '关注用户',
      I18n.bookmarkIllust: '收藏插画',
      I18n.illustIdDownloadTaskExists: '插画ID%s下载任务已经存在',
      I18n.illustIdDownloadTaskStart: '插画ID%s下载任务开始',
      I18n.illustIdSaveSuccess: '插画ID%s保存成功',
      I18n.illustIdSaveFailed: '插画ID%s保存失败',
      I18n.initPostKeyFailed: '初始化PostKey失败',
      I18n.ageLimitHint: '请将个人资料的年龄设置为大于18岁',
      I18n.webSettingFailed: 'Web设置失败',
      I18n.updateProfileSuccess: '更新个人资料成功',
      I18n.updateProfileFailed: '更新个人资料失败',
      I18n.updateWorkspaceSuccess: '更新工作环境成功',
      I18n.updateWorkspaceFailed: '更新工作环境失败',
      I18n.permissionDenied: '拒绝了权限',
      I18n.updateTitle: 'Pixiv Func更新',
      I18n.startDownload: '开始下载',
      I18n.downloadProgress: '下载进度:%s%',
      I18n.loginRequired: '需要登录',
      I18n.invalidId: '无效的ID:%s',
      I18n.invalidPath: '无效的Path:%s',
      I18n.loginSuccess: '登录成功',
      I18n.setToPrivate: '已被设置为私密',
      I18n.getClipboardDataFailed: '获取剪贴板数据失败,可能是没有剪贴板权限',
      I18n.clipboardDataEmpty: '剪贴板数据为空',
      I18n.clipboardAccountDataInvalid: '剪贴板数据不是有效的账号数据',
      I18n.unblockTag: '解除屏蔽:%s',
      I18n.blockTag: '屏蔽:%s',
      I18n.notPremiumHint: '你不是Pixiv高级会员,所以该选项与时间降序行为一致',
      I18n.searchImageStatus429Hint: '当前IP超过了saucenao未注册用户每日50次上限',
    },
    'en_US': {
      I18n.aboutPageTitle: 'About',
      I18n.accountPageTitle: 'Account Management',
      I18n.blockTagPageTitle: 'Block tag Management',
      I18n.downloaderPageTitle: 'Download Tasks',
      I18n.historyPageTitle: 'History',
      I18n.themeSettingsPageTitle: 'Theme',
      I18n.languageSettingsPageTitle: 'Language',
      I18n.imageSourceSettingsPageTitle: 'Image Source',
      I18n.previewQualitySettingsPageTitle: 'Preview Quality',
      I18n.scaleQualitySettingsPageTitle: 'Sacle Quality',
      I18n.meSettingsPageTitle: 'Account Settings',
      I18n.meProfileSettingsPageTitle: 'Me Profile Settings',
      I18n.meWorkspaceSettingsPageTitle: 'Me workspace Settings',
      I18n.meWebSettingsPageTitle: 'Web Settings',
      I18n.loginPageTitle: 'Register or Login',
      I18n.copiedToClipboardHint: 'Copied to Clipboard',
      I18n.cancel: 'Cancel',
      I18n.confirm: 'Confirm',
      I18n.dark: 'Dark',
      I18n.light: 'Light',
      I18n.followSystem: 'Follow the System',
      I18n.illust: 'Illust',
      I18n.manga: 'Manga',
      I18n.novel: 'Novel',
      I18n.illustAndManga: 'Illust&Manga',
      I18n.user: 'User',
      I18n.live: 'Live',
      I18n.restrictPublic: 'Public',
      I18n.restrictPrivate: 'Private',
      I18n.account: 'Account',
      I18n.versionUpdate: 'Version update',
      I18n.versionUpdateHint: 'Current version:%s,Latest version:%s,Click to view',
      I18n.checkVersionHint: 'Check for version updates',
      I18n.hasNewVersionHint: 'Found new version click update',
      I18n.noNewVersionHint: 'Already the latest version',
      I18n.checkingVersionHint: 'Checking for updates...',
      I18n.checkVersionErrorHint: 'Check for updates failed Click to try again',
      I18n.contactAuthor: 'Contact the author',
      I18n.getHelp: 'Get help',
      I18n.currentVersion: 'Current version:%s',
      I18n.openTagPage: 'Open tab',
      I18n.confirmLogoutHint: 'Confirm to log out of this account',
      I18n.next: 'Next',
      I18n.selectFavoriteTheme: 'Choose your favorite theme',
      I18n.laterChangeInSettings: 'You can change it later in the settings',
      I18n.browsingHistory: 'History record',
      I18n.deleteThisHistory: 'Delete this history',
      I18n.deleteThisHistoryHint: 'Unrecoverable after deletion',
      I18n.all: 'All',
      I18n.recommend: 'Recommend',
      I18n.comment: 'Comment',
      I18n.illustIdPageTitle: 'Illust%s',
      I18n.illustIdNotFound: 'Illust%s does not exist',
      I18n.illustAgeLimitHint: 'The Illust %s is %s, please go to the web settings to modify the age limit',
      I18n.send: 'Send',
      I18n.commentSuccessHint: 'Comment successfully',
      I18n.replySuccessHint: 'Reply successfully',
      I18n.replyFailedHint: 'Failed to reply, the comment to reply does not exist',
      I18n.commentFailedHint: 'Failed to comment',
      I18n.deleteCommentSuccessHint: 'Delete comment successfully',
      I18n.deleteCommentFailedHint: 'Failed to delete comment',
      I18n.commentIllust: 'Comment Illust',
      I18n.replyComment: 'Reply to %s',
      I18n.selectImage: 'Select Image',
      I18n.reset: 'Reset',
      I18n.reselect: 'Re-election',
      I18n.playDuration: 'Play time',
      I18n.liveEnd: 'The live broadcast has ended',
      I18n.register: 'Register',
      I18n.login: 'Log in',
      I18n.localReverseProxy: 'Local reverse proxy',
      I18n.reverseProxyHint: 'When the official page of Pixiv cannot be registered or logged in, it is recommended to open a local reverse proxy.',
      I18n.getMoreHelp: 'Get more help >>',
      I18n.useLoginWithClipboardHint: 'Or use\nlong press on the avatar to copy account data',
      I18n.useLoginWithClipboard: 'Login with clipboard data',
      I18n.loginAgree: 'By logging in you agree',
      I18n.userAgreement: '《Pixiv Func User Agreement》',
      I18n.password: 'Password',
      I18n.pixivAccountHint: 'Email address or pixiv ID',
      I18n.clipboard: 'Clipboard',
      I18n.pasteIn: 'Paste in',
      I18n.noEntry: 'Can\'t enter?',
      I18n.following: 'Following',
      I18n.everyone: 'Everyone',
      I18n.myPixiv: 'My Pixiv',
      I18n.rankingItemDay: 'Daily',
      I18n.rankingItemDayR18: 'Daily(R-18)',
      I18n.rankingItemDayMale: 'Daily(Male favorite)',
      I18n.rankingItemDayMaleR18: 'Daily(Male favorite & R-18)',
      I18n.rankingItemDayFemale: 'Daily(Female favorite)',
      I18n.rankingItemDayFemaleR18: 'Daily(Female favorite & R-18)',
      I18n.rankingItemWeek: 'Weekly',
      I18n.rankingItemWeekR18: 'Weekly(R-18)',
      I18n.rankingItemWeekOriginal: 'Weekly(Original)',
      I18n.rankingItemWeekRookie: 'Weekly(Rookie)',
      I18n.rankingItemMonth: 'Month',
      I18n.search: 'Search',
      I18n.searchItem: 'Search: %s',
      I18n.keyword: 'Keyword',
      I18n.illustId: 'IllustID',
      I18n.novelId: 'NovelID',
      I18n.userId: 'UserID',
      I18n.searchImage: 'Search Image',
      I18n.searchHint: 'Search keyword or ID',
      I18n.searchDateLimitNo: 'Unlimited',
      I18n.searchDateLimitDay: 'In one day',
      I18n.searchDateLimitWeek: 'In one week',
      I18n.searchDateLimitMonth: 'In one month',
      I18n.searchDateLimitHalfYear: 'In half a year',
      I18n.searchDateLimitYear: 'In a year',
      I18n.searchDateLimitCustom: 'Custom',
      I18n.searchTarget: 'Target',
      I18n.searchSort: 'Sort',
      I18n.searchDateRange: 'Date range',
      I18n.searchBookmarkCount: 'Bookmark count',
      I18n.searchBookmarkCountNo: 'Not limited',
      I18n.searchBookmarkCountMore: '%s or more',
      I18n.searchSortDateDesc: 'Time Desc',
      I18n.searchSortDateAsc: 'Time Asc',
      I18n.searchSortPopularDesc: 'Popular Desc',
      I18n.searchTargetPartialMatchForTags: 'Tag(Partial match)',
      I18n.searchTargetExactMatchForTags: 'Tag(Exact match)',
      I18n.searchTargetTitleAndCaption: 'Title&Caption',
      I18n.searchTargetText: 'Text',
      I18n.searchTargetKeyword: 'Keyword',
      I18n.useCustomImageSource: 'Use a custom image source',
      I18n.mediumImage: 'Medium',
      I18n.largeImage: 'Large',
      I18n.originalImage: 'Original',
      I18n.resolution: 'Resolution:%s',
      I18n.summary: 'Summary',
      I18n.uploadDate: 'Update date:%s',
      I18n.startGetUgoiraInfo: 'Start getting animation information',
      I18n.getUgoiraInfoFailed: 'Failed to get animation information',
      I18n.startDownloadUgoira: 'Start to download the GIF archive',
      I18n.downloadUgoiraFailed: 'Failed to download gif archive',
      I18n.startGenerateImage: 'Starting to generate pictures total %s frames',
      I18n.startCompositeImage: 'Start compositing picture total %s frames',
      I18n.userIdPageTitle: 'User ID %s',
      I18n.userIdNotFound: 'User ID %s does not exist',
      I18n.work: 'Artwork',
      I18n.bookmarked: 'Bookmarked',
      I18n.about: 'About',
      I18n.fans: 'Fans',
      I18n.ageLimit: 'Age limit',
      I18n.allAge: 'All ages',
      I18n.publicityPublic: 'Public',
      I18n.publicityPrivate: 'Private',
      I18n.publicityMyPixiv: 'My Pixiv',
      I18n.modify: 'Modify',
      I18n.delete: 'Delete',
      I18n.avatar: 'Avatar',
      I18n.nickname: 'Nickname',
      I18n.homepage: 'Homepage',
      I18n.gender: 'Gender',
      I18n.genderMale: 'Male',
      I18n.genderFemale: 'Female',
      I18n.genderUnknown: 'Unkown',
      I18n.address: 'Address',
      I18n.country: 'Country',
      I18n.birthday: 'Birthday',
      I18n.job: 'Job',
      I18n.introduction: 'Introduction',
      I18n.introductionHint: 'Write something',
      I18n.updateProfile: 'Update Profile',
      I18n.workspacePc: 'PC',
      I18n.workspaceMonitor: 'Monitor',
      I18n.workspaceTool: 'Tool',
      I18n.workspaceScanner: 'Scanner',
      I18n.workspaceTablet: 'Tablet',
      I18n.workspaceMouse: 'Mouse',
      I18n.workspacePrinter: 'Printer',
      I18n.workspaceDesktop: 'Desktop',
      I18n.workspaceMusic: 'Music',
      I18n.workspaceDesk: 'Desk',
      I18n.workspaceChair: 'Chair',
      I18n.workspaceOther: 'Comment',
      I18n.workspaceUpdate: 'Update',
      I18n.followed: 'Followed',
      I18n.follow: 'Follow',
      I18n.followUser: 'Follow User',
      I18n.bookmarkIllust: 'Bookmark Illust',
      I18n.illustIdDownloadTaskExists: 'Illust ID %s download task already exists',
      I18n.illustIdDownloadTaskStart: 'Illust ID %s download task started',
      I18n.illustIdSaveSuccess: 'Illust ID %s saved successfully',
      I18n.illustIdSaveFailed: 'Failed to save Illust ID %s',
      I18n.initPostKeyFailed: 'Init PostKey Failed',
      I18n.ageLimitHint: 'Please set profile age to be greater than 18',
      I18n.webSettingFailed: 'Web Settings',
      I18n.updateProfileSuccess: 'Update Profile successfully',
      I18n.updateProfileFailed: 'Failed to Update Profile',
      I18n.updateWorkspaceSuccess: 'Update Workspace successfully',
      I18n.updateWorkspaceFailed: 'Failed to Update Workspace',
      I18n.permissionDenied: 'Permission denied',
      I18n.updateTitle: 'Pixiv Func Update',
      I18n.startDownload: 'Start download',
      I18n.downloadProgress: 'Download progress:%s%',
      I18n.loginRequired: 'Login required',
      I18n.invalidId: 'Invalid ID:%s',
      I18n.invalidPath: 'Invalid Path:%s',
      I18n.loginSuccess: 'login successfully',
      I18n.setToPrivate: 'Set to Private',
      I18n.getClipboardDataFailed: 'Failed to get clipboard data, may not have clipboard permission',
      I18n.clipboardDataEmpty: 'Clipboard data is empty',
      I18n.clipboardAccountDataInvalid: 'Clipboard data is not valid account data',
      I18n.unblockTag: 'Unblock: %s',
      I18n.blockTag: 'Block:%s',
      I18n.notPremiumHint: 'You are not a Pixiv Premium, so this option is consistent with descending chronological behavior',
      I18n.searchImageStatus429Hint: 'The current IP exceeds the daily limit of 50 times for unregistered users of saucenao',
    },
    'ja_JP': {
      I18n.aboutPageTitle: 'Pixiv Funcについて',
      I18n.accountPageTitle: 'アカウント管理',
      I18n.blockTagPageTitle: 'ブロックタグ管理',
      I18n.downloaderPageTitle: 'ダウンロード状況',
      I18n.historyPageTitle: '閲覧履歴',
      I18n.themeSettingsPageTitle: 'テーマ',
      I18n.languageSettingsPageTitle: '言語',
      I18n.imageSourceSettingsPageTitle: '画像ソース',
      I18n.previewQualitySettingsPageTitle: '詳細ページの画質',
      I18n.scaleQualitySettingsPageTitle: '全画面の画質',
      I18n.meSettingsPageTitle: 'アカウント設定',
      I18n.meProfileSettingsPageTitle: 'プロフィール',
      I18n.meWorkspaceSettingsPageTitle: '作業環境',
      I18n.meWebSettingsPageTitle: 'Web設定',
      I18n.loginPageTitle: '登録･ログイン',
      I18n.copiedToClipboardHint: 'クリップボードにコピーしました',
      I18n.cancel: 'キャンセル',
      I18n.confirm: 'OK',
      I18n.dark: 'ダーク',
      I18n.light: 'ライト',
      I18n.followSystem: 'システムのデフォルト',
      I18n.illust: 'イラスト',
      I18n.manga: '漫画',
      I18n.novel: '小説',
      I18n.illustAndManga: 'イラスト･漫画',
      I18n.user: 'ユーザー',
      I18n.live: 'ライブ',
      I18n.restrictPublic: '公開',
      I18n.restrictPrivate: '非公開',
      I18n.account: 'pixiv ID',
      I18n.versionUpdate: '新しいバージョンの更新',
      I18n.versionUpdateHint: '現在のバージョン:%s、最新バージョン:%s,クリックして表示',
      I18n.checkVersionHint: 'アップデートを確認',
      I18n.hasNewVersionHint: '新しいバージョンが見つかりました タップしてアップデート',
      I18n.noNewVersionHint: '最新バージョンを使用中',
      I18n.checkingVersionHint: 'アップデートの確認中...',
      I18n.checkVersionErrorHint: 'アップデートの確認に失敗しました タップして再試行',
      I18n.contactAuthor: '作者に連絡',
      I18n.getHelp: 'ヘルプ',
      I18n.currentVersion: '現在のバージョン:%s',
      I18n.openTagPage: 'タブを開く',
      I18n.confirmLogoutHint: 'このアカウントからログアウトしますか?',
      I18n.next: '次へ',
      I18n.selectFavoriteTheme: 'テーマの選択',
      I18n.laterChangeInSettings: '後で設定を変更できます',
      I18n.browsingHistory: '閲覧履歴',
      I18n.deleteThisHistory: 'この履歴を削除しますか?',
      I18n.deleteThisHistoryHint: '削除されたものは復元できません',
      I18n.all: 'すべて',
      I18n.recommend: '関連作品',
      I18n.comment: 'コメント',
      I18n.illustIdPageTitle: 'イラストID:%s',
      I18n.illustIdNotFound: 'イラストID:%sは存在しません',
      I18n.illustAgeLimitHint: 'このイラスト%sは%sです Web設定に移動して年齢制限を変更してください',
      I18n.send: '送信',
      I18n.commentSuccessHint: 'コメントの送信に成功しました',
      I18n.replySuccessHint: 'コメントの返信に成功しました',
      I18n.replyFailedHint: 'コメントの返信に失敗しました 返信するコメントが存在しません',
      I18n.commentFailedHint: 'コメントの送信に失敗しました',
      I18n.deleteCommentSuccessHint: 'コメントの削除に成功しました',
      I18n.deleteCommentFailedHint: 'コメントの削除に失敗しました',
      I18n.commentIllust: 'イラストにコメントする',
      I18n.replyComment: '%sに返信する',
      I18n.selectImage: '画像を選択',
      I18n.reset: 'リセット',
      I18n.reselect: '再選',
      I18n.playDuration: '再生時間',
      I18n.liveEnd: 'このライブは終了しました',
      I18n.register: '登録',
      I18n.login: 'ログイン',
      I18n.localReverseProxy: 'リバースプロキシ',
      I18n.reverseProxyHint: 'Pixivに登録･ログインできない場合はリバースプロキシを利用することをオススメします',
      I18n.getMoreHelp: '詳細なヘルプ >>',
      I18n.useLoginWithClipboardHint: 'もしくは\nプロフィール画像を長押ししてアカウントデータをコピー',
      I18n.useLoginWithClipboard: 'クリップボードに保存されたデータでログイン',
      I18n.loginAgree: 'ログインすると利用規約に同意したものとみなします',
      I18n.userAgreement: '《Pixiv Func利用規約》',
      I18n.password: 'パスワード',
      I18n.pixivAccountHint: 'メールアドレスまたはpixiv ID',
      I18n.clipboard: 'クリップボード',
      I18n.pasteIn: 'ペースト',
      I18n.noEntry: '入力できない場合',
      I18n.following: 'フォロー中',
      I18n.everyone: 'みんな',
      I18n.myPixiv: 'マイピク',
      I18n.rankingItemDay: 'デイリー',
      I18n.rankingItemDayR18: 'デイリー(R-18)',
      I18n.rankingItemDayMale: 'デイリー(男子に人気)',
      I18n.rankingItemDayMaleR18: 'デイリー(男子に人気 & R-18)',
      I18n.rankingItemDayFemale: 'デイリー(女子に人気)',
      I18n.rankingItemDayFemaleR18: 'デイリー(女子に人気 & R-18)',
      I18n.rankingItemWeek: 'ウィークリー',
      I18n.rankingItemWeekR18: 'ウィークリー(R-18)',
      I18n.rankingItemWeekOriginal: 'ウィークリー(オリジナル)',
      I18n.rankingItemWeekRookie: 'ウィークリー(ルーキー)',
      I18n.rankingItemMonth: 'マンスリー',
      I18n.search: '検索',
      I18n.searchItem: '検索:%s',
      I18n.keyword: 'キーワード',
      I18n.illustId: 'イラストID',
      I18n.novelId: '小説ID',
      I18n.userId: 'ユーザーID',
      I18n.searchImage: '画像検索',
      I18n.searchHint: 'キーワード･ID検索',
      I18n.searchDateLimitNo: '全期間',
      I18n.searchDateLimitDay: '24時間',
      I18n.searchDateLimitWeek: '1週間',
      I18n.searchDateLimitMonth: '1ヶ月間',
      I18n.searchDateLimitHalfYear: '半年間',
      I18n.searchDateLimitYear: '1年間',
      I18n.searchDateLimitCustom: '日付指定',
      I18n.searchTarget: '並び順',
      I18n.searchSort: '検索対象',
      I18n.searchDateRange: '期間',
      I18n.searchBookmarkCount: 'すき!数',
      I18n.searchBookmarkCountNo: '無制限',
      I18n.searchBookmarkCountMore: '%s以上',
      I18n.searchSortDateDesc: '新着順',
      I18n.searchSortDateAsc: '古い順',
      I18n.searchSortPopularDesc: '人気順',
      I18n.searchTargetPartialMatchForTags: 'タグ(部分一致)',
      I18n.searchTargetExactMatchForTags: 'タグ(完全一致)',
      I18n.searchTargetTitleAndCaption: 'タイトル･キャプション',
      I18n.searchTargetText: '本文',
      I18n.searchTargetKeyword: 'キーワード',
      I18n.useCustomImageSource: 'オリジナルの画像ソースを使用する',
      I18n.mediumImage: '標準画質',
      I18n.largeImage: '高画質',
      I18n.originalImage: 'オリジナル画質',
      I18n.resolution: '解像度:%s',
      I18n.summary: 'キャプション',
      I18n.uploadDate: '投稿日:%s',
      I18n.startGetUgoiraInfo: 'アニメーション情報の取得を開始しました',
      I18n.getUgoiraInfoFailed: 'アニメーション情報の取得に失敗しました',
      I18n.startDownloadUgoira: 'GIFアーカイブのダウンロードを開始しました',
      I18n.downloadUgoiraFailed: 'GIFアーカイブのダウンロードに失敗しました',
      I18n.startGenerateImage: '合計%sフレームの画像の生成を開始しました',
      I18n.startCompositeImage: '合計%sフレームの画像の合成を開始しました',
      I18n.userIdPageTitle: 'ユーザーID:%s',
      I18n.userIdNotFound: 'ユーザーID:%sは存在しません',
      I18n.work: '作品',
      I18n.bookmarked: 'コレクション',
      I18n.about: 'プロフィール',
      I18n.fans: 'フォロワー',
      I18n.ageLimit: '年齢制限',
      I18n.allAge: '全年齢',
      I18n.publicityPublic: '公開',
      I18n.publicityPrivate: '非公開',
      I18n.publicityMyPixiv: 'マイピク',
      I18n.modify: '変更',
      I18n.delete: '削除',
      I18n.avatar: 'プロフィール画像',
      I18n.nickname: 'ニックネーム',
      I18n.homepage: 'HPアドレス',
      I18n.gender: '性別',
      I18n.genderMale: '男性',
      I18n.genderFemale: '女性',
      I18n.genderUnknown: '未選択',
      I18n.address: '住所',
      I18n.country: '国',
      I18n.birthday: '誕生日',
      I18n.job: '職業',
      I18n.introduction: '自己紹介',
      I18n.introductionHint: '自己紹介を記入してください',
      I18n.updateProfile: 'プロフィール情報を更新',
      I18n.workspacePc: 'コンピューター',
      I18n.workspaceMonitor: 'モニター',
      I18n.workspaceTool: 'ソフト',
      I18n.workspaceScanner: 'スキャナー',
      I18n.workspaceTablet: 'タブレット',
      I18n.workspaceMouse: 'マウス',
      I18n.workspacePrinter: 'プリンター',
      I18n.workspaceDesktop: '机の上にあるもの',
      I18n.workspaceMusic: '絵を描く時に聞く音楽',
      I18n.workspaceDesk: '机',
      I18n.workspaceChair: '椅子',
      I18n.workspaceOther: 'その他',
      I18n.workspaceUpdate: '作業環境を更新',
      I18n.followed: 'フォロー中',
      I18n.follow: 'フォロー',
      I18n.followUser: 'ユーザーをフォロー',
      I18n.bookmarkIllust: 'すき!する',
      I18n.illustIdDownloadTaskExists: 'イラストID:%sのダウンロードタスクは既に存在します',
      I18n.illustIdDownloadTaskStart: 'イラストID:%sのダウンロードタスクを開始しました',
      I18n.illustIdSaveSuccess: 'イラストID:%sのダウンロードに成功しました',
      I18n.illustIdSaveFailed: 'イラストID:%sのダウンロードに失敗しました',
      I18n.initPostKeyFailed: 'PostKeyの初期化に失敗しました',
      I18n.ageLimitHint: 'プロフィールの年齢を18歳以上に設定してください',
      I18n.webSettingFailed: 'Web設定',
      I18n.updateProfileSuccess: 'プロフィールの更新に成功しました',
      I18n.updateProfileFailed: 'プロフィールの更新に失敗しました',
      I18n.updateWorkspaceSuccess: '作業環境の更新に成功しました',
      I18n.updateWorkspaceFailed: '作業環境の更新に失敗しました',
      I18n.permissionDenied: 'アクセス拒否',
      I18n.updateTitle: 'Pixiv Funcの更新',
      I18n.startDownload: 'ダウンロード開始',
      I18n.downloadProgress: 'ダウンロードの進行状況:%s%',
      I18n.loginRequired: 'ログインが必要です',
      I18n.invalidId: '無効なID:%s',
      I18n.invalidPath: '無効なパス:%s',
      I18n.loginSuccess: 'ログイン成功',
      I18n.setToPrivate: '非公開に設定',
      I18n.getClipboardDataFailed: 'クリップボードのデータを取得できませんでした クリップボードの権限がない可能性があります',
      I18n.clipboardDataEmpty: 'クリップボードのデータが空です',
      I18n.clipboardAccountDataInvalid: 'クリップボードのデータが有効なアカウントデータではありません',
      I18n.unblockTag: 'ブロック解除:%s',
      I18n.blockTag: 'ブロック:%s',
      I18n.notPremiumHint: 'Pixivプレミアムに登録していません このオプションは新着順を表示します',
      I18n.searchImageStatus429Hint: '現在のIPはsaucenaoの未登録ユーザーの1日の上限である50回を超えています',
    },
    'ru_RU': {
      I18n.aboutPageTitle: 'О программе',
      I18n.accountPageTitle: 'Управление акаунтами',
      I18n.blockTagPageTitle: 'Блокировка тегов',
      I18n.downloaderPageTitle: 'История скачивания',
      I18n.historyPageTitle: 'История',
      I18n.themeSettingsPageTitle: 'Тема',
      I18n.languageSettingsPageTitle: 'Язык',
      I18n.imageSourceSettingsPageTitle: 'Источник изображений',
      I18n.previewQualitySettingsPageTitle: 'Качество предпросмотра',
      I18n.scaleQualitySettingsPageTitle: 'Качество маштаба',
      I18n.meSettingsPageTitle: 'Настройки аккаунта',
      I18n.meProfileSettingsPageTitle: 'Настройки моего профиля',
      I18n.meWorkspaceSettingsPageTitle: 'Моё рабочее пространство',
      I18n.meWebSettingsPageTitle: 'Web-настройки',
      I18n.loginPageTitle: 'Вход или Регистрация',
      I18n.copiedToClipboardHint: 'Скопировано в буфер обмена',
      I18n.cancel: 'Отмена',
      I18n.confirm: 'Ок',
      I18n.dark: 'Тёмный',
      I18n.light: 'Светлый',
      I18n.followSystem: 'Как в системе',
      I18n.illust: 'Иллюстрации',
      I18n.manga: 'Манга',
      I18n.novel: 'Новела',
      I18n.illustAndManga: 'Иллюстрации и манга',
      I18n.user: 'Пользователь',
      I18n.live: 'жить',
      I18n.restrictPublic: 'Для всех',
      I18n.restrictPrivate: 'Приватный',
      I18n.account: 'Аккаунт',
      I18n.versionUpdate: 'Советы по обновлению версии',
      I18n.versionUpdateHint: 'Текущая версия: %s, последняя версия: %s, нажмите для просмотра',
      I18n.checkVersionHint: 'Проверить обновление версии',
      I18n.hasNewVersionHint: 'Найдена новая версия, нажмите, чтобы обновить',
      I18n.noNewVersionHint: 'Установленна последняя версия',
      I18n.checkingVersionHint: 'Проверка обновлений...',
      I18n.checkVersionErrorHint: 'Не удалось проверить обновления, нажмите, чтобы повторить попытку',
      I18n.contactAuthor: 'Связаться с автором',
      I18n.getHelp: 'Получить помощь',
      I18n.currentVersion: 'Текущая версия:%s',
      I18n.openTagPage: 'Открыть вкладку',
      I18n.confirmLogoutHint: 'Подтвердите выход из этой учетной записи',
      I18n.next: 'Далее',
      I18n.selectFavoriteTheme: 'Выберите свою любимую тему',
      I18n.laterChangeInSettings: 'Позже вы сможете измененить в настройках',
      I18n.browsingHistory: 'История просмотра',
      I18n.deleteThisHistory: 'Удалить эту историю',
      I18n.deleteThisHistoryHint: 'Невозможно восстановить после удаления',
      I18n.all: 'Всё',
      I18n.recommend: 'Рекомендации',
      I18n.comment: 'Коментарии',
      I18n.illustIdPageTitle: 'Иллюстрация%s',
      I18n.illustIdNotFound: 'Иллюстрация%не найдена',
      I18n.illustAgeLimitHint: 'Иллюстрация%sсодержит контент%s,перейдите в Web-настройки, чтобы изменить возрастное ограничение',
      I18n.send: 'Отправить',
      I18n.commentSuccessHint: 'Коментарий оставлен',
      I18n.replySuccessHint: 'Ответ оставлен',
      I18n.replyFailedHint: 'Не удалось ответить, комментарий для ответа не существует',
      I18n.commentFailedHint: 'Ошибка коментария',
      I18n.deleteCommentSuccessHint: 'Коментарий удалён',
      I18n.deleteCommentFailedHint: 'Не удалось коментарий',
      I18n.commentIllust: 'Иллюстрация комментария',
      I18n.replyComment: 'Ответить на %s',
      I18n.selectImage: 'Выбрать изображение',
      I18n.reset: 'Сбросить',
      I18n.reselect: 'Перевыбрать',
      I18n.playDuration: 'Продолжительность произведения',
      I18n.liveEnd: 'Live завершён',
      I18n.register: 'Регистрация',
      I18n.login: 'Вход',
      I18n.localReverseProxy: 'Локальный прокси',
      I18n.reverseProxyHint: 'Если официальная страница Pixiv не может быть зарегистрирована или авторизована, рекомендуется включить прокси.',
      I18n.getMoreHelp: 'Получить дополнительную помощь >>',
      I18n.useLoginWithClipboardHint: 'Или используйте длинное нажатие на аватаре,\n чтобы скопировать данные аккаунта скопировать данные учетной записи',
      I18n.useLoginWithClipboard: 'Войти с данными из буфера обмена',
      I18n.loginAgree: 'Входя в систему, вы принимаете',
      I18n.userAgreement: '《Пользовательское соглашение Pixiv Func》',
      I18n.password: 'Пароль',
      I18n.pixivAccountHint: 'Адрес электронной почты или идентификатор pixiv ID',
      I18n.clipboard: 'Буфер обмена',
      I18n.pasteIn: 'вставить',
      I18n.noEntry: 'Не удалось войти?',
      I18n.following: 'Подписки',
      I18n.everyone: 'Все',
      I18n.myPixiv: 'Мой Pixiv',
      I18n.rankingItemDay: 'Ежедневно',
      I18n.rankingItemDayR18: 'Ежедневно(R-18)',
      I18n.rankingItemDayMale: 'Ежедневно(Мужчины)',
      I18n.rankingItemDayMaleR18: 'Ежедневно(Мужчины & R-18)',
      I18n.rankingItemDayFemale: 'Ежедневно(Женщины)',
      I18n.rankingItemDayFemaleR18: 'Ежедневно(Женщины & R-18)',
      I18n.rankingItemWeek: 'Еженедельно',
      I18n.rankingItemWeekR18: 'Еженедельно(R-18)',
      I18n.rankingItemWeekOriginal: 'Еженедельно(Оригинальное)',
      I18n.rankingItemWeekRookie: 'Еженедельно(Дебют)',
      I18n.rankingItemMonth: 'Ежемесячно',
      I18n.search: 'Поиск',
      I18n.searchItem: 'Искать: %s',
      I18n.keyword: 'Ключевые слова',
      I18n.illustId: 'ID Иллюстрации',
      I18n.novelId: 'ID Новелы',
      I18n.userId: 'ID Пользователя',
      I18n.searchImage: 'Найти по изображения',
      I18n.searchHint: 'Ключевое слово или ID поиска',
      I18n.searchDateLimitNo: 'Всё время',
      I18n.searchDateLimitDay: 'Один день',
      I18n.searchDateLimitWeek: 'Неделя',
      I18n.searchDateLimitMonth: 'Один месяц',
      I18n.searchDateLimitHalfYear: 'Полгода',
      I18n.searchDateLimitYear: 'Одного год',
      I18n.searchDateLimitCustom: 'Пользовательский',
      I18n.searchTarget: 'Цель',
      I18n.searchSort: 'Сортировать',
      I18n.searchDateRange: 'Временной диапазон',
      I18n.searchBookmarkCount: 'Кол-во в закладках',
      I18n.searchBookmarkCountNo: 'Неограниченно',
      I18n.searchBookmarkCountMore: 'Более %s',
      I18n.searchSortDateDesc: 'По убыванию',
      I18n.searchSortDateAsc: 'По возрастанию',
      I18n.searchSortPopularDesc: 'По популярности',
      I18n.searchTargetPartialMatchForTags: 'Тег(Частично)',
      I18n.searchTargetExactMatchForTags: 'Теги(Полные)',
      I18n.searchTargetTitleAndCaption: 'Заголовок и подпись',
      I18n.searchTargetText: 'Текст',
      I18n.searchTargetKeyword: 'Ключевое слово',
      I18n.useCustomImageSource: 'Использовать свой источник изображения',
      I18n.mediumImage: 'Среднее',
      I18n.largeImage: 'Крупное',
      I18n.originalImage: 'Оригинальное',
      I18n.resolution: 'Разрешение:%s',
      I18n.summary: 'Сводка',
      I18n.uploadDate: 'Дата загрузки:%s',
      I18n.startGetUgoiraInfo: 'Получение информации о GIF',
      I18n.getUgoiraInfoFailed: 'Не удалось получить информацию об GIF',
      I18n.startDownloadUgoira: 'Начало загрузки GIF',
      I18n.downloadUgoiraFailed: 'Не удалось загрузить GIF',
      I18n.startGenerateImage: 'Начало генерации изображения, всего %s кадров',
      I18n.startCompositeImage: 'Начать компоновку изображения, всего %s кадров',
      I18n.userIdPageTitle: 'ID%s пользователя ',
      I18n.userIdNotFound: 'ID%s пользователя не существует',
      I18n.work: 'Работы',
      I18n.bookmarked: 'Закладка',
      I18n.about: 'О авторе',
      I18n.fans: 'Фанаты',
      I18n.ageLimit: 'Возрастное ограничение',
      I18n.allAge: 'Все возрасты',
      I18n.publicityPublic: 'Публичная',
      I18n.publicityPrivate: 'Частная',
      I18n.publicityMyPixiv: 'Друзья',
      I18n.modify: 'Изменить',
      I18n.delete: 'Удалить',
      I18n.avatar: 'Аватар',
      I18n.nickname: 'Никнейм',
      I18n.homepage: 'Главная',
      I18n.gender: 'Пол',
      I18n.genderMale: 'Мужской',
      I18n.genderFemale: 'Женский',
      I18n.genderUnknown: 'Не выбрано',
      I18n.address: 'Адрес',
      I18n.country: 'Страна',
      I18n.birthday: 'День рождения',
      I18n.job: 'Работа',
      I18n.introduction: 'Введение',
      I18n.introductionHint: 'Напишите что-нибудь',
      I18n.updateProfile: 'Обновить профиль',
      I18n.workspacePc: 'Компьютер',
      I18n.workspaceMonitor: 'Монитор',
      I18n.workspaceTool: 'Программное обеспечение',
      I18n.workspaceScanner: 'Сканер',
      I18n.workspaceTablet: 'Планшет',
      I18n.workspaceMouse: 'Мышь',
      I18n.workspacePrinter: 'Принтер',
      I18n.workspaceDesktop: 'Рабочий стол',
      I18n.workspaceMusic: 'Музыка при рисовании',
      I18n.workspaceDesk: 'Стол',
      I18n.workspaceChair: 'Кресло',
      I18n.workspaceOther: 'Другое',
      I18n.workspaceUpdate: 'Обновить рабочую среду',
      I18n.followed: 'Подписан',
      I18n.follow: 'Подписаться',
      I18n.followUser: 'Подписаться на пользователя',
      I18n.bookmarkIllust: 'Иллюстрации Закладки',
      I18n.illustIdDownloadTaskExists: 'Задача загрузки с ID%s иллюстрации  уже существует',
      I18n.illustIdDownloadTaskStart: 'Начата задача загрузки иллюстрации с ID%s',
      I18n.illustIdSaveSuccess: 'ID%s иллюстрации успешно сохранен',
      I18n.illustIdSaveFailed: 'Не удалось сохранить иллюстрацию c ID%s',
      I18n.initPostKeyFailed: 'Не удалось инициализировать PostKey',
      I18n.ageLimitHint: 'Пожалуйста, установите возраст вашего профиля больше 18 лет',
      I18n.webSettingFailed: 'Сбой Web-настройки',
      I18n.updateProfileSuccess: 'Обновление профиля успешно',
      I18n.updateProfileFailed: 'Ошибка обновления профиля',
      I18n.updateWorkspaceSuccess: 'Обновление рабочей области успешно',
      I18n.updateWorkspaceFailed: 'Ошибка обновления рабочей области',
      I18n.permissionDenied: 'Отказано в доступе',
      I18n.updateTitle: 'Обновление Pixiv Func',
      I18n.startDownload: 'Начать загрузку',
      I18n.downloadProgress: 'Ход загрузки: %s%',
      I18n.loginRequired: 'Требуется вход в систему',
      I18n.invalidId: 'Неверный ID:%s',
      I18n.invalidPath: 'Неверный путь:%s',
      I18n.loginSuccess: 'Вход выполнен успешно',
      I18n.setToPrivate: 'Установить как частный',
      I18n.getClipboardDataFailed: 'Не удалось получить данные из буфера обмена, возможно, нет разрешения на буфер обмена',
      I18n.clipboardDataEmpty: 'Данные из буфера обмена пусты',
      I18n.clipboardAccountDataInvalid: 'Данные из буфера обмена не являются допустимыми данными учетной записи',
      I18n.unblockTag: 'Разблокировать:%s',
      I18n.blockTag: 'Заблокировать:%s',
      I18n.notPremiumHint: 'Вы не являетесь пользователем Pixiv Premium, поэтому этот вариант соответствует по убыванию',
      I18n.searchImageStatus429Hint: 'Текущий IP-адрес превышает дневной лимит в 50 незарегистрированных пользователей saucenao'
    },
  };

  @override
  Map<String, Map<String, String>> get keys => _keys;

  static Future<void> loadExpansions() async {
    final directory = await getApplicationSupportDirectory();
    directory.listSync().forEach((file) {
      expansions.add(I18nExpansion.fromJson(jsonDecode(File(file.path).readAsStringSync())));
    });
  }

  static Future<void> addExpansion(I18nExpansion expansion) async {
    final directory = await getApplicationSupportDirectory();
    final file = File(join(directory.path, '${expansion.locale}.json'));
    file.writeAsStringSync(expansion.toString());
  }
}
