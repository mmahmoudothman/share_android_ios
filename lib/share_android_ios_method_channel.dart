import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'share_android_ios_platform_interface.dart';

/// An implementation of [ShareAndroidIosPlatform] that uses method channels.
class MethodChannelShareAndroidIos extends ShareAndroidIosPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('share_android_ios');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> share(String message) async {
    await methodChannel.invokeListMethod('share',{'message':'message'});

  }
}
