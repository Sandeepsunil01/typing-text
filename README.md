## Typing Text Animation

![alt text](<animated text.gif>)

## Features

This widget displays text with a typewriter-like animation effect, where characters appear one by one.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

1. Import the package

```dart
import 'package:typing_text/typing_text.dart';
```

2. Use the `TypingTextAnimation` widget in your build method:

```dart
TypingTextAnimation(
  texts: ["Hello", "World!"],
  textStyle: TextStyle(color: Colors.black, fontSize: 16.0),
  showCursor: true, // Optional, defaults to true
),
```

## Additional information

Properties:
`texts`: A list of strings to be displayed sequentially with animation.
`textStyle`: The style applied to the displayed text.
`showCursor`: A boolean to control whether to show an underscore cursor at the end of the typing animation (defaults to true).

## Code Snippet

Here's a basic example of using the widget:

```Dart
Scaffold(
    body: Center(
        child: Row(
        children: [
            Text("I am a ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
            TypingTextAnimation(
            texts: ["Flutter Developer", "Dart Lover"],
            textStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))
        ]),
    ),
),
```
This code displays the two provided strings with a typing animation effect and a cursor at the end.

