import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smena_demo/common/ui_kit/app_colors.dart';

class MenuBannerTimer extends StatefulWidget {
  const MenuBannerTimer({super.key});

  @override
  State<MenuBannerTimer> createState() => _MenuBannerTimerState();
}

class _MenuBannerTimerState extends State<MenuBannerTimer> {
  Timer? _timer;

  Duration _timeLeft = const Duration(minutes: 10);

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final minutes = _digitsToString(_timeLeft.inMinutes.remainder(60));
    final seconds = _digitsToString(_timeLeft.inSeconds.remainder(60));

    return Container(
      width: 67,
      height: 28,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: ShapeDecoration(
        color: AppColors.cart,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Center(
        child: Text(
          '$minutes:$seconds',
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }

  String _digitsToString(int n) => n.toString().padLeft(2, '0');

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _updateTimer());
  }

  void _updateTimer() {
    setState(() {
      final seconds = _timeLeft.inSeconds - 1;
      if (seconds < 0) {
        _timer!.cancel();
      } else {
        _timeLeft = Duration(seconds: seconds);
      }
    });
  }
}
