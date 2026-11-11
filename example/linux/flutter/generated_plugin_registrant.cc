//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <first_assignment/first_assignment_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) first_assignment_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FirstAssignmentPlugin");
  first_assignment_plugin_register_with_registrar(first_assignment_registrar);
}
