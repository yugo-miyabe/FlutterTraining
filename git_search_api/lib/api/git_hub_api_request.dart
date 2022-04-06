enum HTTPMethod { get }

class GithubAPIRequest {
  final String path;
  final Map<String, String> queries;
  final Map<String, String> headers;
  final HTTPMethod method;

  GithubAPIRequest({
    required this.path,
    required this.queries,
    required this.headers,
    required this.method,
  });

  Uri get getRequestUri {
    final uri = Uri(
        scheme: 'https',
        host: 'api.github.com',
        path: path,
        queryParameters: queries);
    return uri;
  }
}
