class GitUser {
  /// ログインID
  final String login;

  /// アバターURL
  final String avatorUrl;

  /// コンストラクタ
  const GitUser({
    required this.login,
    required this.avatorUrl,
  });

  /// ファクトリコンストラクタ
  factory GitUser.fromJson(Map<String, dynamic> json) {
    return GitUser(
      login: json['login'],
      avatorUrl: json['avatar_url'],
    );
  }
}
