import 'package:e_pengaduan/api/routes.api.dart';
import 'package:get/get.dart';

class LoginAuth extends GetConnect {
  Routes routes = Get.put(Routes());

  Future<String?> loginOfficer(
      {required String username, required String password}) async {
    final res = await post(routes.officerLoginEndpoint.value, {
      'username': username,
      'password': password,
    });

    // ! RESPONSE RETURN STRING
    if (res.isOk) {
      return res.bodyString;
    } else {
      return res.bodyString ?? '';
    }
  }

  Future<String?> loginPeople(
      {required String username, required String password}) async {
    final res = await post(routes.peopleLoginEndpoint.value, {
      'username': username,
      'password': password,
    });

    // ! RESPONSE RETURN STRING
    if (res.isOk) {
      return res.bodyString;
    } else {
      return res.bodyString ?? '';
    }
  }
}
