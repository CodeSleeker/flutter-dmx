#include "include/flutter_dmx/flutter_dmx_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_dmx_plugin.h"

void FlutterDmxPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_dmx::FlutterDmxPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
