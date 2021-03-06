import 'package:git_search_api/model/items.dart';

class Repository {
  final int totalCount;
  final bool incompleteResults;
  final List<Item> items;

  const Repository({
    required this.totalCount,
    required this.incompleteResults,
    required this.items,
  });

  factory Repository.fromJson(Map<String, dynamic> json) {
    var itemList = json['items'] as List;
    List<Item> itemsList = itemList.map((i) => Item.fromJson(i)).toList();

    return Repository(
      totalCount: json['total_count'],
      incompleteResults: json['incomplete_results'],
      items: itemsList,
    );
  }
}
