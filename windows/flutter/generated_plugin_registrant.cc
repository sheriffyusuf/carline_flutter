//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <connectivity_plus_windows/connectivity_plus_windows_plugin.h>
#include <local_auth_windows/local_auth_plugin.h>
#include <nb_utils/nb_utils_plugin.h>
#include <smart_auth/smart_auth_plugin.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  ConnectivityPlusWindowsPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("ConnectivityPlusWindowsPlugin"));
  LocalAuthPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("LocalAuthPlugin"));
  NbUtilsPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("NbUtilsPlugin"));
  SmartAuthPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("SmartAuthPlugin"));
}
