import 'package:flutter/material.dart';

class OnBoardingAnimation extends StatefulWidget {
  final bool moveRight;
  final String imagePath;
  OnBoardingAnimation({
    super.key,
    required this.moveRight,
    required this.imagePath,
  });

  @override
  State<OnBoardingAnimation> createState() => _OnBoardingAnimationState();
}

class _OnBoardingAnimationState extends State<OnBoardingAnimation> {
  late bool moveRight; // local state variable

  @override
  @override
  void initState() {
    super.initState();
    moveRight = widget.moveRight; // ✅ fix
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(
        begin: moveRight ? -20 : 20,
        end: moveRight ? 20 : -20,
      ),
      duration: const Duration(seconds: 4),
      curve: Curves.easeInOut,
      onEnd: () {
        setState(() {
          moveRight = !moveRight; // ✅ keeps animation looping
        });
      },

      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(value, 0),
          child: Image.asset(widget.imagePath, width: 250),
        );
      },
    );
  }
}
