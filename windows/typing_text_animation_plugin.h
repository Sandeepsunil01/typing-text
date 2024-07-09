#ifndef FLUTTER_PLUGIN_TYPING_TEXT_ANIMATION_PLUGIN_H_
#define FLUTTER_PLUGIN_TYPING_TEXT_ANIMATION_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace typing_text_animation {

class TypingTextAnimationPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  TypingTextAnimationPlugin();

  virtual ~TypingTextAnimationPlugin();

  // Disallow copy and assign.
  TypingTextAnimationPlugin(const TypingTextAnimationPlugin&) = delete;
  TypingTextAnimationPlugin& operator=(const TypingTextAnimationPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace typing_text_animation

#endif  // FLUTTER_PLUGIN_TYPING_TEXT_ANIMATION_PLUGIN_H_
