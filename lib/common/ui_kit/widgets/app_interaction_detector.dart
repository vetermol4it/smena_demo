import 'package:flutter/material.dart';

class AppInteractionDetector extends StatefulWidget {
  final VoidCallback onTap;
  final Widget child;

  const AppInteractionDetector({
    required this.onTap,
    required this.child,
    super.key,
  });

  @override
  State<AppInteractionDetector> createState() => _AppInteractionDetectorState();
}

class _AppInteractionDetectorState extends State<AppInteractionDetector> {
  bool _isTapped = false;

  final _animDuration = const Duration(milliseconds: 100);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        setState(() {
          _isTapped = true;
        });
        await Future.delayed(_animDuration);
        setState(() {
          _isTapped = false;
        });
        await Future.delayed(_animDuration);

        widget.onTap();
      },
      child: AnimatedScale(
        duration: _animDuration,
        scale: _isTapped ? 0.95 : 1,
        child: widget.child,
      ),
    );
  }
}
