import 'dart:io';

import 'package:e_pengaduan/api/routes.api.dart';
import 'package:get/get.dart';

class ComplaintAuth extends GetConnect {
  Routes routes = Get.put(Routes());

  Future<String?> seeMyListComplaint() async {
    final res = await post(routes.myListReportEndpoint.value, null,
        // ! GANTI TOKEN USER
        headers: {HttpHeaders.authorizationHeader: 'Bearer MyTOKEN'});

    // ! RESPONSE RETURN List Of Laporan
    if (res.isOk) {
      return res.bodyString;
    } else {
      return res.bodyString ?? '';
    }
  }

// ! USE HTTP PACKAGE MULTIPART REQUEST
  Future<String?> complaint({
    required String complaintDate,
    required String complaintMessage,
    required String photoPath,
  }) async {
    final res = await post(routes.addReportEndpoint.value, {
      'tgl_pengaduan': complaintDate,
      'isi_laporan': complaintMessage,
      'foto': photoPath,
    },
        // ! GANTI TOKEN USER
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer MyTOKEN',
        });

    // ! RESPONSE RETURN List Of Laporan
    if (res.isOk) {
      return res.bodyString;
    } else {
      return res.bodyString ?? '';
    }
  }

  Future<String?> upcoming() async {
    final res = await post(routes.upcomingReportEndpoint.value, {},
        // ! GANTI TOKEN USER
        headers: {HttpHeaders.authorizationHeader: 'Bearer MyTOKEN'});

    // ! RESPONSE RETURN List Of Laporan = PROSES
    if (res.isOk) {
      return res.bodyString;
    } else {
      return res.bodyString ?? '';
    }
  }

  Future<String?> verifyComplaint({
    required String complaintId,
    required String status,
  }) async {
    final res = await post(routes.verificationEndpoint.value, {
      'id_pengaduan': complaintId,
      'status': status,
    },
        // ! GANTI TOKEN USER
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer MyTOKEN',
        });

    // ! RESPONSE RETURN String Message
    if (res.isOk) {
      return res.bodyString;
    } else {
      return res.bodyString ?? '';
    }
  }

  Future<String?> response({
    required String complaintId,
    required String responseDate,
    required String responseMessage,
    required String officerId,
  }) async {
    final res = await post(routes.addResponseEndpoint.value, {
      'id_pengaduan': complaintId,
      'tgl_pengaduan': responseDate,
      'tanggapan': responseMessage,
      'id_petugas': officerId,
    },
        // ! GANTI TOKEN USER
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer MyTOKEN',
        });

    // ! RESPONSE RETURN String Message
    if (res.isOk) {
      return res.bodyString;
    } else {
      return res.bodyString ?? '';
    }
  }
}
