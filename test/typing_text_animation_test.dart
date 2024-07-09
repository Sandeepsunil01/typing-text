import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:typing_text_animation/typing_text_animation.dart';

void main() {
  testWidgets(
    'TypingTextAnimation displays text and cursor',
    (WidgetTester tester) async {
      final texts = ["Hello", "World"];
      const textStyle = TextStyle(color: Colors.black, fontSize: 16.0);

      await tester.pumpWidget(
        MaterialApp(
          home: TypingTextAnimation(
            texts: texts,
            textStyle: textStyle,
          ),
        ),
      );

      // Verify initial state - no text displayed
      expect(find.text(texts[0]), findsNothing);

      expect(find.text("_"), findsOneWidget); // Cursor visibility
    }, //skip: !isFlutterTestEnvironment
  ); // Only run in test environment
}
