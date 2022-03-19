class GitUser {
  final String login;
  final String avatorUrl;

  const GitUser({
    required this.login,
    required this.avatorUrl,
  });

  factory GitUser.fromJson(Map<String, dynamic> json) {
    return GitUser(
      login: json['login'],
      avatorUrl: json['avatar_url'],
    );
  }
}
