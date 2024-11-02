import 'package:flutter/material.dart';
import 'package:class_leap/src/custom_style/button_accept.dart';
import 'package:class_leap/src/custom_style/button_reject.dart';
import 'package:class_leap/src/utils/data/dummy_data.dart'; // Ganti dengan path yang sesuai

class DetailpeminjamanPage extends StatelessWidget {
  final String studentName;
  final String studentNim;
  final String inputDate;
  final String ruangan;
  final String bookDate;
  final String jamMulai;
  final String jamSelesai;
  final String jumlahPengguna;
  final String keterangan;

  DetailpeminjamanPage({
    Key? key,
    required this.studentName,
    required this.studentNim,
    required this.inputDate,
    required this.ruangan,
    required this.bookDate,
    required this.jamMulai,
    required this.jamSelesai,
    required this.jumlahPengguna,
    required this.keterangan,
    required bool isAccepted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController reasonController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Peminjaman",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFFFF5833),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildRowWithDivider('Nama', studentName),
            buildRowWithDivider('NIM', studentNim),
            buildRowWithDivider('Tgl Input', inputDate),
            buildRowWithDivider('Ruangan', ruangan),
            buildRowWithDivider('Tgl Peminjaman', bookDate),
            buildRowWithDivider('Jam Mulai', jamMulai),
            buildRowWithDivider('Jam Selesai', jamSelesai),
            buildRowWithDivider('Jml Pengguna', jumlahPengguna),
            buildRowWithDivider('Keterangan', keterangan),
            SizedBox(height: 16),
            Text(
              'Alasan Ditolak:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              controller: reasonController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0x99FF5833)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0x99FF5833)),
                ),
                hintText: 'Masukkan alasan ditolak',
              ),
              maxLines: 3,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonAccept(
                  label: 'Terima',
                  onPressed: () {
                    print("Diterima");
                  },
                ),
                SizedBox(width: 40),
                ButtonReject(
                  label: 'Tolak',
                  onPressed: () {
                    print("Ditolak dengan alasan: ${reasonController.text}");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRowWithDivider(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Container(
              width: 160,
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
        Divider(color: Color(0x99FF5833)),
      ],
    );
  }
}