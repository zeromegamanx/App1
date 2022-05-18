// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/services/api.dart';
import '../config/app_config.dart';

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class LoginManager with ChangeNotifier {
  ///
  void doLogin(BuildContext context, String email, String password) {
    ///validate
    if (context != null && email != null && password != null) {
      final accountApi = AccountApi();
      TokenRequest request = TokenRequest();
      request.clientId = AppConfig.clientId;
      request.clientSecret = AppConfig.clientSecret;
      request.username = email;
      request.password = password;
      request.grantType = 'password';

      print("Do Login $email $password");
      accountApi.requestToken(body: request, xlang: "vi").then((value) {
        print("Do Login $email $password");
      }).catchError((ex) {
        print("Loi::: ${ex.toString()}");
      });
    }

    ///Login
  }
}
