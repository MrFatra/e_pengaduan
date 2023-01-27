// ignore_for_file: non_constant_identifier_names

class Pengaduan {
  int? id_pengaduan;
  String? tgl_pengaduan;
  String? nik;
  String? isi_laporan;
  String? foto;
  String? status;

  Pengaduan({
    this.id_pengaduan,
    required this.tgl_pengaduan,
    required this.nik,
    required this.isi_laporan,
    required this.foto,
    required this.status,
  });

  Pengaduan.fromMap(Map<String, dynamic> map) {
    id_pengaduan = map['id_pengaduan'];
    tgl_pengaduan = map['tgl_pengaduan'];
    nik = map['nik'];
    isi_laporan = map['isi_laporan'];
    foto = map['foto'];
    status = map['status'];
  }
}
