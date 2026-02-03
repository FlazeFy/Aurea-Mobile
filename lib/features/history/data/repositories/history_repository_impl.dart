import 'package:aurea/core/network/models.dart';
import 'package:aurea/features/history/data/models/history_response.dart';
import 'package:aurea/features/history/data/repositories/history_repository.dart';
import 'package:dio/dio.dart';

class HistoryRepositoryImpl implements HistoryRepository {
    final Dio dio;

    HistoryRepositoryImpl({required this.dio});

    @override
    Future<HistoryResponse> getAllHistory(int page) async {
        final response = await dio.get('/histories?page=$page');
        return HistoryResponse.fromJson(response.data);
    }

    @override
    Future<BaseMessageResponse> deleteHistoryById(String id) async {
        final response = await dio.delete('/histories/$id');
        return BaseMessageResponse.fromJson(response.data);
    }
}
