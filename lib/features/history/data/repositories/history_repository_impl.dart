import 'package:aurea/features/history/data/models/history_response.dart';
import 'package:dio/dio.dart';

abstract class HistoryRepository {
    Future<HistoryResponse> getAllHistory(int page);
}

class HistoryRepositoryImpl implements HistoryRepository {
    final Dio dio;

    HistoryRepositoryImpl({required this.dio});

    @override
    Future<HistoryResponse> getAllHistory(int page) async {
        final response = await dio.post('/histories?page=$page');
        return HistoryResponse.fromJson(response.data);
    }
}
