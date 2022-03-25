class License {
  /// 名前
  final String? name;

  ///　リンク
  final String? url;

  /// コンストラクタ
  const License({
    required this.name,
    required this.url,
  });

  /// ファクトリコンストラクタ
  factory License.fromJson(Map<String, dynamic> json) {
    return License(
      name: json['name'],
      url: json['url'],
    );
  }
}
