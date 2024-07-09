#include "include/typing_text_animation/typing_text_animation_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "typing_text_animation_plugin.h"

void TypingTextAnimationPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  typing_text_animation::TypingTextAnimationPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
