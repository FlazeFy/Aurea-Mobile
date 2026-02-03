import 'package:aurea/features/history/data/models/history_response.dart';
import 'package:equatable/equatable.dart';

abstract class HistoryState extends Equatable {
    @override
    List<Object?> get props => [];
}

class HistoryInitial extends HistoryState {}
class HistoryLoading extends HistoryState {}

class HistoryLoaded extends HistoryState {
    final List<History> histories;
    final int totalPage;

    HistoryLoaded({required this.histories, required this.totalPage});

    @override
    List<Object?> get props => [histories, totalPage];
}

class HistoryError extends HistoryState {
    final String message;

    HistoryError({required this.message});

    @override
    List<Object?> get props => [message];
}

class HistoryDeleteSuccess extends HistoryState {
    final String message;

    HistoryDeleteSuccess({required this.message});
}