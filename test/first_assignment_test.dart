import 'package:flutter_test/flutter_test.dart';
import 'package:first_assignment/first_assignment.dart';
import 'package:first_assignment/first_assignment_platform_interface.dart';
import 'package:first_assignment/first_assignment_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFirstAssignmentPlatform
    with MockPlatformInterfaceMixin
    implements FirstAssignmentPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FirstAssignmentPlatform initialPlatform = FirstAssignmentPlatform.instance;

  test('$MethodChannelFirstAssignment is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFirstAssignment>());
  });

  test('getPlatformVersion', () async {
    FirstAssignment firstAssignmentPlugin = FirstAssignment();
    MockFirstAssignmentPlatform fakePlatform = MockFirstAssignmentPlatform();
    FirstAssignmentPlatform.instance = fakePlatform;

    expect(await firstAssignmentPlugin.getPlatformVersion(), '42');
  });
}
