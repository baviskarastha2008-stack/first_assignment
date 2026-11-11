#ifndef FLUTTER_PLUGIN_FIRST_ASSIGNMENT_PLUGIN_H_
#define FLUTTER_PLUGIN_FIRST_ASSIGNMENT_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace first_assignment {

class FirstAssignmentPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FirstAssignmentPlugin();

  virtual ~FirstAssignmentPlugin();

  // Disallow copy and assign.
  FirstAssignmentPlugin(const FirstAssignmentPlugin&) = delete;
  FirstAssignmentPlugin& operator=(const FirstAssignmentPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace first_assignment

#endif  // FLUTTER_PLUGIN_FIRST_ASSIGNMENT_PLUGIN_H_
