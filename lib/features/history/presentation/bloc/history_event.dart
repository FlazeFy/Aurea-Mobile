import 'package:equatable/equatable.dart';

abstract class HistoryEvent extends Equatable {
    @override
    List<Object> get props => [];
}

class FetchHistory extends HistoryEvent {
    final int page;

    FetchHistory({this.page = 1});

    @override
    List<Object> get props => [page];
}

class DeleteHistory extends HistoryEvent {
    final String id;

    DeleteHistory({required this.id});
}

class RefreshHistory extends HistoryEvent {}
