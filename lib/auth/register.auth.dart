import 'package:get/get.dart';

class RegisterAuth extends GetConnect {
  final String endpoint = 'http://192.168.97.209:8000/api/register/officer';

  Future<String?> register({
    required String officerName,
    required String username,
    required String password,
    required String passwordConfirmation,
    required String phoneNumber,
    required String level,
  }) async {
    final res = await post(endpoint, {
      'nama_petugas': officerName,
      'username': username,
      'password': password,
      'password_confirmation': passwordConfirmation,
      'telp': phoneNumber,
      'level': level,
    });

    if (res.isOk) {
      return res.bodyString;
    } else {
      return res.bodyString ?? '';
    }
  }
}
