class Owner {
  final int id;

  final String? avatarUrl;

  const Owner({
    required this.id,
    required this.avatarUrl,
  });

  factory Owner.fromJson(Map<String, dynamic> json) {
    return Owner(
      id: json['id'],
      avatarUrl: json['avatar_url'],
    );
  }
}
