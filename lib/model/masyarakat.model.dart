// ignore_for_file: non_constant_identifier_names

class Masyarakat {
  String? nik;
  String? nama;
  String? username;
  String? password;
  String? telepon;

  Masyarakat({
    this.nik,
    required this.nama,
    required this.username,
    required this.password,
    required this.telepon,
  });

  Masyarakat.fromMap(Map<String, dynamic> map) {
    nik = map['nik'];
    nama = map['nama'];
    username = map['username'];
    password = map['password'];
    telepon = map['telepon'];
  }
}
