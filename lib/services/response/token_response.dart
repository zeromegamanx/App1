part of swagger.api;

class TokenResponse {
  String? accessToken;
  String? refreshToken;

  TokenResponse();

  @override
  String toString() {
    return 'TokenResponse[access_token=$accessToken, refresh_token=$refreshToken]';
  }

  TokenResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
  }

  Map<String, dynamic> toJson() {
    return {};
  }

  static List<TokenResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? <TokenResponse>[]
        : json.map((value) => new TokenResponse.fromJson(value)).toList();
  }

  static Map<String, TokenResponse> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TokenResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new TokenResponse.fromJson(value));
    }
    return map;
  }
}
