import 'package:flutter/material.dart';
import 'package:pet_adaption_app/main.dart';

class TimerBar extends StatefulWidget {
  const TimerBar({super.key});

  @override
  State<TimerBar> createState() => _TimerBarState();
}

class _TimerBarState extends State<TimerBar> with TickerProviderStateMixin {
  // animation controller
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 5100),
    )..addListener(() {
        setState(() {});
      });
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      value: _animationController.value,
      valueColor: const AlwaysStoppedAnimation<Color>(foregroundColor),
    );
  }
}
