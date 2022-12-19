import 'share_android_ios_platform_interface.dart';

class ShareAndroidIos {
  Future<String?> getPlatformVersion() {
    return ShareAndroidIosPlatform.instance.getPlatformVersion();
  }

  static Future<void> share(String message) async {
    ShareAndroidIosPlatform.instance.share(message);
  }
}
