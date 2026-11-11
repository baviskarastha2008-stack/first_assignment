import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'first_assignment_method_channel.dart';

abstract class FirstAssignmentPlatform extends PlatformInterface {
  /// Constructs a FirstAssignmentPlatform.
  FirstAssignmentPlatform() : super(token: _token);

  static final Object _token = Object();

  static FirstAssignmentPlatform _instance = MethodChannelFirstAssignment();

  /// The default instance of [FirstAssignmentPlatform] to use.
  ///
  /// Defaults to [MethodChannelFirstAssignment].
  static FirstAssignmentPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FirstAssignmentPlatform] when
  /// they register themselves.
  static set instance(FirstAssignmentPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
