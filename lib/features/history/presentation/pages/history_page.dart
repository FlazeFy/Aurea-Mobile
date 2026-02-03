import 'package:aurea/features/history/presentation/bloc/history_bloc.dart';
import 'package:aurea/features/history/presentation/bloc/history_state.dart';
import 'package:aurea/features/history/presentation/ui/organisms/o_history_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
      ),
      body: BlocBuilder<HistoryBloc, HistoryState>(
        builder: (context, state) {
          if (state is HistoryLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is HistoryLoaded) {
            if (state.histories.isEmpty) {
              return const Center(child: Text('No history found'));
            }
            return OrganismHistoryList(histories: state.histories);
          }

          if (state is HistoryError) {
            return Center(child: Text(state.message));
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}