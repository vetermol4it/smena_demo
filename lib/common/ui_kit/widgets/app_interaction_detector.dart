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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isTapped = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isTapped = false;
        });
        widget.onTap();
      },
      child: AnimatedScale(
        duration: const Duration(milliseconds: 200),
        scale: _isTapped ? 0.9 : 1,
        child: widget.child,
      ),
    );
  }
}
