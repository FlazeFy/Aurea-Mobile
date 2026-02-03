import 'package:aurea/core/global/style.dart';
import 'package:aurea/features/auth/presentation/ui/atoms/a_input.dart';
import 'package:flutter/material.dart';

class MoleculeLoginForm extends StatelessWidget {
    final TextEditingController email;
    final TextEditingController password;

    const MoleculeLoginForm({super.key, required this.email, required this.password});

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: spaceSM, horizontal: spaceMD),
            child: Column(
                children: [
                    AtomInput(controller: email, hint: 'Email'),
                    AtomInput(controller: password, hint: 'Password', obscure: true),
                ],
            )
        );
    }
}
