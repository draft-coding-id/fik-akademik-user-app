import 'package:flutter/material.dart';
import 'package:class_leap/src/custom_style/button_accept.dart';
import 'package:class_leap/src/custom_style/button_reject.dart';
import 'package:class_leap/src/screens/peminjaman/detail_peminjaman_screen.dart';
import 'package:class_leap/src/utils/data/dummy_data.dart';

class BookingCard extends StatelessWidget {
  final String ruangan;
  final String studentName;
  final String inputDate;
  final String time;
  final String groupSize;
  final Function onAccept;
  final Function onReject;

  const BookingCard({
    Key? key,
    required this.ruangan,
    required this.studentName,
    required this.inputDate,
    required this.time,
    required this.groupSize,
    required this.onAccept,
    required this.onReject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailpeminjamanPage(
              studentName: studentName,
              studentNim: DummyData.studentNim,
              inputDate: inputDate,
              ruangan: ruangan,
              bookDate: DummyData.bookDate,
              jamMulai: DummyData.jamMulai,
              jamSelesai: DummyData.jamSelesai,
              jumlahPengguna: DummyData.jumlahPengguna,
              keterangan: DummyData.keterangan,
              isAccepted: false,
            ),
          ),
        );
      },
      child: Card(
        elevation: 4,
        child: Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    studentName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(inputDate),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(width: 12),
                          Text(time),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Icon(Icons.location_pin),
                          SizedBox(width: 12),
                          Text(ruangan),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.group),
                          SizedBox(width: 12),
                          Text(groupSize),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ButtonAccept(
                        label: 'Terima',
                        onPressed: () => onAccept(),
                      ),
                      SizedBox(height: 12),
                      ButtonReject(
                        label: 'Tolak',
                        onPressed: () => onReject(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}