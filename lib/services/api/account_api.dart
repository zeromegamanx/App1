part of swagger.api;

class AccountApi {
  final ApiClient? apiClient;

  AccountApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  ///
  ///
  /// login.
  Future<TokenResponse?> requestToken(
      {TokenRequest? body, String? newToken, String? xlang}) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/sso/oauth/token".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String?> headerParams = {
      "token_device": newToken,
      "os_device": "IOS",
      "x-lang": xlang,
    };
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    // if (contentType.startsWith("multipart/form-data")) {
    //   bool hasFields = false;
    //   MultipartFile mp = new MultipartFile(null, null);
    //   if (hasFields) postBody = mp;
    // } else {}

    var response = await apiClient!.invokeAPI(path, 'POST', queryParams,
        postBody!, headerParams, formParams, contentType, authNames,
        isDeviceInfo: true);

    if (response.data != null) {
      apiClient!.validateFromData(response.data);
      return TokenResponse.fromJson(response.data);
    } else {
      return null;
    }
  }
}
