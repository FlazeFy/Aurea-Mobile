import 'package:aurea/core/global/style.dart';
import 'package:flutter/material.dart';

class OrganismLoginCard extends StatelessWidget {
    final Widget form;
    final Widget actions;
    final Widget? error;

    const OrganismLoginCard({
        super.key,
        required this.form,
        required this.actions,
        this.error,
    });

    @override
    Widget build(BuildContext context) {
        return Container(
            margin: const EdgeInsets.all(spaceMD),
            padding: const EdgeInsets.all(spaceMD),
            decoration: const BoxDecoration(
                color: dangerLightColor,
                borderRadius: BorderRadius.all(Radius.circular(roundedLG))
            ),
            child: Column(
                children: [
                    const Text('Welcome to Aurea', style: TextStyle(fontSize: textXLG, fontWeight: FontWeight.w600)),
                    form,
                    if (error != null) error!,
                    actions,
                ],
            ),
        );
    }
}
