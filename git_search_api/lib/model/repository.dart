class Repository {
  /// 検索結果のカウント
  final int totalCount;

  ///不完全な結果
  final bool incompleteResults;

  /// コンストラクタ
  const Repository({
    required this.totalCount,
    required this.incompleteResults,
  });

  /// ファクトリコンストラクタ
  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(
        totalCount: json['total_count'],
        incompleteResults: json['incomplete_results']);
  }
}
