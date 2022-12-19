import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'share_android_ios_method_channel.dart';

abstract class ShareAndroidIosPlatform extends PlatformInterface {
  /// Constructs a ShareAndroidIosPlatform.
  ShareAndroidIosPlatform() : super(token: _token);

  static final Object _token = Object();

  static ShareAndroidIosPlatform _instance = MethodChannelShareAndroidIos();

  /// The default instance of [ShareAndroidIosPlatform] to use.
  ///
  /// Defaults to [MethodChannelShareAndroidIos].
  static ShareAndroidIosPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ShareAndroidIosPlatform] when
  /// they register themselves.
  static set instance(ShareAndroidIosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> share(String message) async {
  }
}
