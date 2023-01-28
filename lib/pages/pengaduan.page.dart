import 'package:e_pengaduan/widgets/myform.widget.dart';
import 'package:flutter/material.dart';

class PengaduanPage extends StatelessWidget {
  const PengaduanPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController report = TextEditingController();
    TextEditingController reportTitle = TextEditingController();
    TextEditingController reportDate = TextEditingController();
    TextEditingController reportLocation = TextEditingController();
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(10)),
            child: Text('Sampaikan Laporan Anda'),
          ),
          MyForm(
            controller: reportTitle,
            label: 'Ketik judul laporan anda',
          ),
          MyForm(
            controller: report,
            label: 'Ketik isi laporan anda',
            height: 500,
          ),
          MyForm(
            controller: reportDate,
            label: 'Pilih tanggal kejadian',
            suffixIcon: Icon(Icons.calendar_today_outlined),
          ),
          MyForm(
            controller: reportLocation,
            label: 'Ketik lokasi kejadian',
          ),
          DropdownButton(
            items: [
              DropdownMenuItem(child: Text('Pilih instansi tujuan')),
            ],
            onChanged: (dynamic) {},
          ),
          DropdownButton(
            items: [
              DropdownMenuItem(child: Text('Pilih kategori laporan anda')),
            ],
            onChanged: (dynamic) {},
          ),
          ElevatedButton(onPressed: () {}, child: Text('Kirim')),
        ],
      ),
    );
  }
}
