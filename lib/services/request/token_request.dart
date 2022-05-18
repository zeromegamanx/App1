part of swagger.api;

class TokenRequest {
  /* tên đăng nhập */
  String? username;
  /* mật khẩu */
  String? password;

  String? clientId;

  String? clientSecret;

  String? grantType;

  TokenRequest();

  @override
  String toString() {
    return 'TokenRequest[username=$username, password=$password, clientId=$clientId, clientSecret=$clientSecret, grantType=$grantType, ]';
  }

  TokenRequest.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    username = json['username'];
    password = json['password'];
    clientId = json['client_id'];
    clientSecret = json['client_secret'];
    grantType = json['grant_type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'client_id': clientId,
      'client_secret': clientSecret,
      'grant_type': grantType
    };
  }
}
