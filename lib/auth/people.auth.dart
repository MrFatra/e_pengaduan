import 'dart:io';

import 'package:e_pengaduan/api/routes.api.dart';
import 'package:get/get.dart';

class PeopleAuth extends GetConnect {
  Routes routes = Get.put(Routes());

  Future<String?> seeMyProfile() async {
    final res = await post(routes.userProfileEndpoint.value, null,
        // ! GANTI TOKEN USER
        headers: {HttpHeaders.authorizationHeader: 'Bearer MyTOKEN'});

    // ! RESPONSE RETURN DETAIL OF USER (PEOPLE MODEL)
    if (res.isOk) {
      return res.bodyString;
    } else {
      return res.bodyString ?? '';
    }
  }

  // ! x-www-form-urlencoded FIX
  Future<String?> deleteOfficer({required String id}) async {
    final res = await post(routes.deleteOfficerEndpoint.value, {
      'id': id,
    },
        // ! GANTI TOKEN USER
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer MyTOKEN'
        });

    // ! RESPONSE RETURN DETAIL OF USER (PEOPLE MODEL)
    if (res.isOk) {
      return res.bodyString;
    } else {
      return res.bodyString ?? '';
    }
  }
}
