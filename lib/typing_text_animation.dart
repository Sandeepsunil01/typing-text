import 'package:flutter/material.dart';

class TypingTextAnimation extends StatefulWidget {
  final List<String> texts;
  final TextStyle textStyle;
  final bool showCursor;

  const TypingTextAnimation({
    super.key,
    required this.texts,
    required this.textStyle,
    this.showCursor = true,
  });

  @override
  TypingTextAnimationState createState() => TypingTextAnimationState();
}

class TypingTextAnimationState extends State<TypingTextAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<int> _animation;
  int _currentTextIndex = 0;
  bool _showCursor = true;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration:
          Duration(milliseconds: widget.texts[_currentTextIndex].length * 150),
    );

    _animation = IntTween(
      begin: 0,
      end: widget.texts[_currentTextIndex].length,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // After animation completes, show the cursor and wait for a delay
        setState(() {
          _showCursor = true;
        });
        Future.delayed(const Duration(milliseconds: 1000), () {
          // Move to the next text after the delay
          setState(() {
            _showCursor = false;
            _currentTextIndex = (_currentTextIndex + 1) % widget.texts.length;
            int newTextLength = widget.texts[_currentTextIndex].length;
            _animationController.duration =
                Duration(milliseconds: newTextLength * 150);
            _animation = IntTween(
              begin: 0,
              end: newTextLength,
            ).animate(
              CurvedAnimation(
                  parent: _animationController, curve: Curves.easeInOut),
            );
            _animationController.reset();
            _animationController.forward();
          });
        });
      }
    });

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          int currentIndex = _animation.value;
          String displayText =
              widget.texts[_currentTextIndex].substring(0, currentIndex);
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                displayText,
                style: widget.textStyle,
              ),
              if (_showCursor)
                Visibility(
                  visible: widget.showCursor,
                  child: Text(
                    "_",
                    style: widget.textStyle,
                  ),
                ), // Show cursor if _showCursor is true
            ],
          );
        },
      ),
    );
  }
}
