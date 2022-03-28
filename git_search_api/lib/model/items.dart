import 'package:git_search_api/model/owner.dart';

class Item {
  final int id;

  final String name;

  final String fullName;

  final Owner owner;

  final String language;

  final int stargazersCount;

  /// コンストラクタ
  const Item({
    required this.id,
    required this.fullName,
    required this.owner,
    required this.name,
    required this.language,
    required this.stargazersCount,
  });

  /// ファクトリコンストラクタ
  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      fullName: json['full_name'],
      owner: Owner.fromJson(json['owner']),
      name: json['name'],
      language: json['language'],
      stargazersCount: json['stargazers_count'],
    );
  }
}
