import 'package:get/get.dart';

class LoginAuth extends GetConnect {
  final String endpoint = 'http://192.168.97.209:8000/api/login/people';

  Future<String?> login(
      {required String username, required String password}) async {
    final res = await post(endpoint, {
      'username': username,
      'password': password,
    });

    if (res.isOk) {
      return res.bodyString;
    } else {
      return res.bodyString ?? '';
    }
  }
}
