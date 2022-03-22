class Licence {
  /// 名前
  final String name;

  ///　リンク
  final String url;

  /// コンストラクタ
  const Licence({
    required this.name,
    required this.url,
  });

  /// ファクトリコンストラクタ
  factory Licence.fromJson(Map<String, dynamic> json) {
    return Licence(
      name: json['name'],
      url: json['url'],
    );
  }
}
