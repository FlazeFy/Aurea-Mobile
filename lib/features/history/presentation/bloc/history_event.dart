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

class RefreshHistory extends HistoryEvent {}
