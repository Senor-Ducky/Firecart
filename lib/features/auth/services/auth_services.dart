import 'package:firecart/constants/error_handler.dart';
import 'package:firecart/constants/utils.dart';
import 'package:firecart/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:firecart/constants/global_variables.dart';

class AuthService {
  void SignUpUser(
      {required BuildContext context,
      required String email,
      required String name,
      required String password}) async {
    try {
      User user = User(
          id: '',
          name: name,
          password: password,
          email: email,
          address: '',
          type: '',
          token: '');

      http.Response res = await http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      httpErrorhandle(
        response: res,
        context: context,
        onSuccess: () {
          ShowSnackBar(context, 'Account Created! Login with same credentials');
        },
      );
    } catch (e) {
      ShowSnackBar(context, e.toString());
    }
  }
}
