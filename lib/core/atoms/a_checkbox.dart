import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';

class AtomCheckbox extends StatelessWidget {
  final bool value;
  final double size;
  final ValueChanged<bool>? onChanged;

  const AtomCheckbox({
    super.key,
    required this.value,
    this.size = 24,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final bool enabled = onChanged != null;

    return GestureDetector(
      onTap: enabled ? () => onChanged!(!value) : null,
      child: Opacity(
        opacity: enabled ? 1 : 0.5, // disabled effect
        child: Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: value ? lightPinkColor : Colors.transparent,
            border: Border.all(
              color: value ? pinkColor : grayColor,
              width: 2,
            ),
          ),
          child: value
            ? Icon(Icons.check, size: size * 0.6, color: pinkColor)
            : null,
        ),
      ),
    );
  }
}