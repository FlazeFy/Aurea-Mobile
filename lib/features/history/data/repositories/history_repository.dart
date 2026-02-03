import 'package:aurea/core/network/models.dart';
import 'package:aurea/features/history/data/models/history_response.dart';

abstract class HistoryRepository {
    Future<HistoryResponse> getAllHistory(int page);
    Future<BaseMessageResponse> deleteHistoryById(String id);
}