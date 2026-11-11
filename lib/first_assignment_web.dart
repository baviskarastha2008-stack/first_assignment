// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:web/web.dart' as web;

import 'first_assignment_platform_interface.dart';

/// A web implementation of the FirstAssignmentPlatform of the FirstAssignment plugin.
class FirstAssignmentWeb extends FirstAssignmentPlatform {
  /// Constructs a FirstAssignmentWeb
  FirstAssignmentWeb();

  static void registerWith(Registrar registrar) {
    FirstAssignmentPlatform.instance = FirstAssignmentWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = web.window.navigator.userAgent;
    return version;
  }
}
