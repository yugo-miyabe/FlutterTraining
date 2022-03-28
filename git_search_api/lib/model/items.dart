import 'package:git_search_api/model/owner.dart';

class Item {
  final int id;

  final String name;

  final String fullName;

  final Owner owner;

  final String htmlUrl;

  final String? description;

  final String language;

  final int stargazersCount;

  /// コンストラクタ
  const Item({
    required this.id,
    required this.name,
    required this.fullName,
    required this.owner,
    required this.htmlUrl,
    required this.description,
    required this.language,
    required this.stargazersCount,
  });

  /// ファクトリコンストラクタ
  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      name: json['name'],
      fullName: json['full_name'],
      owner: Owner.fromJson(json['owner']),
      htmlUrl: json['html_url'],
      description: json['description'],
      language: json['language'],
      stargazersCount: json['stargazers_count'],
    );
  }
}
