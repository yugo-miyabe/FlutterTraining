class Repository {
  /// 名前
  final String name;

  /// 作成日時
  final String createdAt;

  /// お気に入りの数
  final int stargazersCount;

  /// 説明
  final String? description;

  /// 最終更新日時
  final String updatedAt;

  /// ライセンス
  final String? license;

  /// コンストラクタ
  const Repository({
    required this.name,
    required this.createdAt,
    required this.stargazersCount,
    required this.description,
    required this.updatedAt,
    required this.license,
  });

  /// ファクトリコンストラクタ
  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(
      name: json['name'],
      createdAt: json['created_at'],
      stargazersCount: json['stargazers_count'],
      description: json['description'],
      updatedAt: json['updated_at'],
      license: json['license'],
    );
  }
}
