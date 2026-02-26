import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';

class AtomInput extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscure;
  final String? label;

  const AtomInput({
    super.key,
    required this.controller,
    required this.hint,
    this.label,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) Container(
          margin: const EdgeInsets.only(bottom: spaceSM),
          child:Text(label!, style: const TextStyle(fontWeight: FontWeight.w500))
        ),
        TextField(
          controller: controller,
          obscureText: obscure,
          decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: const Color(0xFFF9FAFB),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFE0E0E0),
                width: 1.2,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFF3B82F6),
                width: 1.4,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFE0E0E0),
                width: 1.2,
              ),
            ),
          ),
        )
      ],
    );
  }
}
