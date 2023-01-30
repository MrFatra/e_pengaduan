// ignore_for_file: non_constant_identifier_names

class Petugas {
  int? id_petugas;
  String? nama_petugas;
  String? username;
  String? password;
  String? telepon;
  String? level;

  Petugas({
    this.id_petugas,
    required this.nama_petugas,
    required this.username,
    required this.password,
    required this.telepon,
    required this.level,
  });

  Petugas.fromMap(Map<String, dynamic> map) {
    id_petugas = map['id_petugas'];
    nama_petugas = map['nama_petugas'];
    username = map['username'];
    password = map['password'];
    telepon = map['telepon'];
    level = map['level'];
  }
}
