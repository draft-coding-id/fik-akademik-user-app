import 'package:flutter/material.dart';
import 'package:class_leap/src/custom_style/booking_card.dart';
import 'package:class_leap/src/custom_style/card_confirmed.dart';
import 'package:class_leap/src/utils/data/dummy_data.dart';

class SemuadaftarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Semua Daftar Peminjaman',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFFFF5833),
      ),
      body: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            BookingCard(
              studentName: DummyData.studentName,
              inputDate: DummyData.bookDate,
              time: "${DummyData.jamMulai} - ${DummyData.jamSelesai} WIB",
              ruangan: DummyData.ruangan,
              groupSize: "${DummyData.jumlahPengguna} Orang",
              onAccept: () {
                // Aksi saat tombol 'Terima' ditekan
              },
              onReject: () {
                // Aksi saat tombol 'Tolak' ditekan
              },
            ),
            SizedBox(height: 16),
            BookingCard(
              studentName: DummyData.studentName,
              inputDate: DummyData.bookDate,
              time: "${DummyData.jamMulai} - ${DummyData.jamSelesai} WIB",
              ruangan: DummyData.ruangan,
              groupSize: "${DummyData.jumlahPengguna} Orang",
              onAccept: () {
                // Aksi saat tombol 'Terima' ditekan
              },
              onReject: () {
                // Aksi saat tombol 'Tolak' ditekan
              },
            ),
            SizedBox(height: 16),
            BookingCard(
              studentName: DummyData.studentName,
              inputDate: DummyData.bookDate,
              time: "${DummyData.jamMulai} - ${DummyData.jamSelesai} WIB",
              ruangan: DummyData.ruangan,
              groupSize: "${DummyData.jumlahPengguna} Orang",
              onAccept: () {
                // Aksi saat tombol 'Terima' ditekan
              },
              onReject: () {
                // Aksi saat tombol 'Tolak' ditekan
              },
            ),
            SizedBox(height: 16),
            // CardConfirmed(
            //   studentName: DummyData.studentName,
            //   inputDate: DummyData.bookDate,
            //   time: "${DummyData.jamMulai} - ${DummyData.jamSelesai} WIB",
            //   ruangan: DummyData.ruangan,
            //   groupSize: "${DummyData.jumlahPengguna} Orang",
            //   isAccepted: false, // Atur sesuai status
            // ),
            SizedBox(height: 16),
            // CardConfirmed(
            //   studentName: DummyData.studentName,
            //   inputDate: DummyData.bookDate,
            //   time: "${DummyData.jamMulai} - ${DummyData.jamSelesai} WIB",
            //   ruangan: DummyData.ruangan,
            //   groupSize: "${DummyData.jumlahPengguna} Orang",
            //   isAccepted: true, // Atur sesuai status
            // ),
          ],
        ),
      ),
    );
  }
}