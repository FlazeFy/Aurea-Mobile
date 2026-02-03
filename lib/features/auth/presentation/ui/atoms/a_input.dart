import 'package:flutter/material.dart';

class AtomInput extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscure;

  const AtomInput({
    super.key,
    required this.controller,
    required this.hint,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(hintText: hint),
    );
  }
}
