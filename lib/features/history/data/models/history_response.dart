class History {
    final String id;
    final String historyType;
    final String historyContext;
    final String createdAt;

    History({
        required this.id,
        required this.historyType,
        required this.historyContext,
        required this.createdAt,
    });

    factory History.fromJson(Map<String, dynamic> json) {
        return History(
            id: json['id'],
            historyType: json['history_type'],
            historyContext: json['history_context'],
            createdAt: json['created_at'],
        );
    }
}

class HistoryResponse {
    final List<History> data;
    final int totalPage;

    HistoryResponse({required this.data, required this.totalPage});

    factory HistoryResponse.fromJson(Map<String, dynamic> json) {
        final dataList = (json['data'] as List).map((item) => History.fromJson(item)).toList();
        final totalPage = json['meta']['total_page'] ?? 1;

        return HistoryResponse(
            data: dataList,
            totalPage: totalPage,
        );
    }
}
