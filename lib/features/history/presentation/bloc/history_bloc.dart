import 'package:aurea/features/history/data/repositories/history_repository.dart';
import 'package:bloc/bloc.dart';
import 'history_event.dart';
import 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
    final HistoryRepository repository;

    HistoryBloc({required this.repository}) : super(HistoryInitial()) {
        on<FetchHistory>(_onFetchHistory);
        on<RefreshHistory>(_onRefreshHistory);
        on<DeleteHistory>(_onDeleteHistory);
    }

    Future<void> _onFetchHistory(FetchHistory event, Emitter<HistoryState> emit) async {
        try {
            emit(HistoryLoading());
            final response = await repository.getAllHistory(event.page);
            emit(HistoryLoaded(histories: response.data, totalPage: response.totalPage));
        } catch (e) {
            emit(HistoryError(message: e.toString()));
        }
    }

    Future<void> _onRefreshHistory(RefreshHistory event, Emitter<HistoryState> emit) async {
        try {
            emit(HistoryLoading());
            final response = await repository.getAllHistory(1);
            emit(HistoryLoaded(histories: response.data, totalPage: response.totalPage));
        } catch (e) {
            emit(HistoryError(message: e.toString()));
        }
    }

    Future<void> _onDeleteHistory(DeleteHistory event, Emitter<HistoryState> emit) async {
        try {
            final result = await repository.deleteHistoryById(event.id);
            emit(HistoryDeleteSuccess(message: result.message));
            add(FetchHistory());
        } catch (e) {
            emit(HistoryError(message: e.toString()));
        }
    }
}
