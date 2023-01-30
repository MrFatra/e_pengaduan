import 'package:e_pengaduan/api/routes.api.dart';
import 'package:get/get.dart';

class RegisterAuth extends GetConnect {
  Routes routes = Get.put(Routes());

  Future<String?> registerOfficer({
    required String officerName,
    required String username,
    required String password,
    required String passwordConfirmation,
    required String phoneNumber,
    required String level,
  }) async {
    final res = await post(routes.officerRegisterEndpoint.value, {
      'nama_petugas': officerName,
      'username': username,
      'password': password,
      'password_confirmation': passwordConfirmation,
      'telp': phoneNumber,
      'level': level,
    });

    // ! RESPONSE RETURN STRING
    if (res.isOk) {
      return res.bodyString;
    } else {
      return res.bodyString ?? '';
    }
  }

  Future<String?> registerPeople({
    required String peopleName,
    required String nik,
    required String username,
    required String password,
    required String passwordConfirmation,
    required String phoneNumber,
  }) async {
    final res = await post(routes.peopleRegisterEndpoint.value, {
      'nama_petugas': peopleName,
      'nik': nik,
      'username': username,
      'password': password,
      'password_confirmation': passwordConfirmation,
      'telp': phoneNumber,
    });

    // ! RESPONSE RETURN STRING
    if (res.isOk) {
      return res.bodyString;
    } else {
      return res.bodyString ?? '';
    }
  }
}
