import 'package:aurea/core/global/style.dart';
import 'package:aurea/core/atoms/a_input.dart';
import 'package:flutter/material.dart';

class MoleculeLoginForm extends StatelessWidget {
    final TextEditingController email;
    final TextEditingController password;

    const MoleculeLoginForm({super.key, required this.email, required this.password});

    @override
    Widget build(BuildContext context) {
        return Column(
            children: [
                AtomInput(controller: email, hint: 'name@example.com', label: "Email Address"),
                Container(height: spaceMD),
                AtomInput(controller: password, hint: 'Enter your password', obscure: true, label: "Password"),
                Container(height: spaceMD),
            ]
        );
    }
}
