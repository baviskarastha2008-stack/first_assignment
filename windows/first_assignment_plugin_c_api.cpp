#include "include/first_assignment/first_assignment_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "first_assignment_plugin.h"

void FirstAssignmentPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  first_assignment::FirstAssignmentPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
