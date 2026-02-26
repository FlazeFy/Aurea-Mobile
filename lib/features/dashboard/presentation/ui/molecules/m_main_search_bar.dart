import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';

class MoleculeMainSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const MoleculeMainSearchBar({
    super.key,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: spaceMD),
      height: 60,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: darkColor.withOpacity(0.125),
            blurRadius: 6.0,
            spreadRadius: 0.0,
            offset: const Offset(
              1.0, 1.0,
            ),
          )
        ],
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Color(0xFF9AA4B2),
            size: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              decoration: const InputDecoration(
                hintText: "Search products or routines...",
                hintStyle: TextStyle(
                  color: Color(0xFF9AA4B2),
                  fontSize: 16,
                ),
                border: InputBorder.none,
              ),
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}