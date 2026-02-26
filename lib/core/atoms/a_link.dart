import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';

class AtomLink extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? color;

  const AtomLink({super.key, required this.text, this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    final linkColor = color ?? darkColor;

    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(6),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 2,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: linkColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}