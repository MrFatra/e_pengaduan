import 'package:get/get.dart';

class Routes {
  // * rubah ip dinamis
  RxString _myIPEmulator = '10.0.2.2'.obs;
  RxString _myIP = '192.168.55.156'.obs;

  RxString get _url => 'http://${_myIPEmulator.value}:8000/api'.obs;

  // * NO AUTH
  RxString get officerRegisterEndpoint => '${_url.value}/register/officer'.obs;
  RxString get peopleRegisterEndpoint => '${_url.value}/register/people'.obs;
  RxString get peopleLoginEndpoint => '${_url.value}/login/people'.obs;
  RxString get officerLoginEndpoint => '${_url.value}/login/officer'.obs;

  // * Masyarakat ONLY
  RxString get myListReportEndpoint => '${_url.value}/list-reports'.obs;
  RxString get addReportEndpoint => '${_url.value}/complaint'.obs;
  RxString get userProfileEndpoint => '${_url.value}/get-profile/people'.obs;

  // * Petugas ONLY
  RxString get listOfficersEndpoint => '${_url.value}/list-officers'.obs;
  RxString get upcomingReportEndpoint => '${_url.value}/upcoming'.obs;
  RxString get verificationEndpoint => '${_url.value}/report-verification'.obs;
  RxString get addResponseEndpoint => '${_url.value}/response'.obs;
  RxString get deleteOfficerEndpoint => '${_url.value}/officer'.obs;
}
