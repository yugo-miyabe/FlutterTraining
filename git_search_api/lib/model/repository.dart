class Repository {
  /// 検索結果のカウント
  final String totalCount;

  ///
  final bool incompleteResultsx;

  /// コンストラクタ
  const Repository({
    required this.totalCount,
    required this.incompleteResultsx,
  });

  /// ファクトリコンストラクタ
  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(
        totalCount: json['total_count'],
        incompleteResultsx: json['incomplete_resultsx']);
  }
}
