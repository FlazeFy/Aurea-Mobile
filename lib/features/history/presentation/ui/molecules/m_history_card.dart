
import 'package:aurea/core/molecules/m_confirmation_dialog.dart';
import 'package:aurea/features/history/data/models/history_response.dart';
import 'package:aurea/features/history/presentation/bloc/history_bloc.dart';
import 'package:aurea/features/history/presentation/bloc/history_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoleculeHistoryCard extends StatelessWidget {
  final History history;

  const MoleculeHistoryCard({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${history.historyType} | ${history.historyContext}',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                history.createdAt,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () {
              showDeleteConfirmation(
                context: context,
                title: 'Delete History',
                content: 'This history will be permanently removed.',
                onConfirm: () {
                  context.read<HistoryBloc>().add(
                    DeleteHistory(id: history.id),
                  );
                },
              );
            },
          ),
        ]
      )
    );
  }
}