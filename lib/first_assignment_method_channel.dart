import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'first_assignment_platform_interface.dart';

/// An implementation of [FirstAssignmentPlatform] that uses method channels.
class MethodChannelFirstAssignment extends FirstAssignmentPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('first_assignment');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>(
      'getPlatformVersion',
    );
    return version;
  }
}
