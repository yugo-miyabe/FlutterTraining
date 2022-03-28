import 'package:git_search_api/model/items.dart';

class Repository {
  final int totalCount;

  final bool incompleteResults;

  final Item items;

  const Repository({
    required this.totalCount,
    required this.incompleteResults,
    required this.items,
  });

  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(
        totalCount: json['total_count'],
        incompleteResults: json['incomplete_results'],
        items: Item.fromJson(json['items']),
    );
  }
}
