import 'dart:io';

import 'package:e_pengaduan/api/routes.api.dart';
import 'package:get/get.dart';

class OfficerAuth extends GetConnect {
  Routes routes = Get.put(Routes());

  Future<String?> getListOfficers() async {
    final res = await post(routes.listOfficersEndpoint.value, null,
        // ! GANTI TOKEN USER
        headers: {HttpHeaders.authorizationHeader: 'Bearer MyTOKEN'});

    // ! RESPONSE RETURN List Of Officers
    if (res.isOk) {
      return res.bodyString;
    } else {
      return res.bodyString ?? '';
    }
  }
}
