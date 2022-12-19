import 'package:flutter_test/flutter_test.dart';
import 'package:share_android_ios/share_android_ios.dart';
import 'package:share_android_ios/share_android_ios_platform_interface.dart';
import 'package:share_android_ios/share_android_ios_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockShareAndroidIosPlatform
    with MockPlatformInterfaceMixin
    implements ShareAndroidIosPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ShareAndroidIosPlatform initialPlatform = ShareAndroidIosPlatform.instance;

  test('$MethodChannelShareAndroidIos is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelShareAndroidIos>());
  });

  test('getPlatformVersion', () async {
    ShareAndroidIos shareAndroidIosPlugin = ShareAndroidIos();
    MockShareAndroidIosPlatform fakePlatform = MockShareAndroidIosPlatform();
    ShareAndroidIosPlatform.instance = fakePlatform;

    expect(await shareAndroidIosPlugin.getPlatformVersion(), '42');
  });
}
