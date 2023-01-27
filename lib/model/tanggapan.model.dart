// ignore_for_file: non_constant_identifier_names

class Tanggapan {
  int? id_tanggapan;
  int? id_pengaduan;
  String? tgl_tanggapan;
  String? tanggapan;
  int? id_petugas;

  Tanggapan({
    this.id_tanggapan,
    required this.id_pengaduan,
    required this.tgl_tanggapan,
    required this.tanggapan,
    required this.id_petugas,
  });

  Tanggapan.fromMap(Map<String, dynamic> map) {
    id_tanggapan = map['id_tanggapan'];
    id_pengaduan = map['id_pengaduan'];
    tgl_tanggapan = map['tgl_tanggapan'];
    tanggapan = map['tanggapan'];
    id_petugas = map['id_petugas'];
  }
}
