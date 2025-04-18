import 'package:flutter/material.dart';
import '../models/student.dart';
import '../widgets/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  final Student student = Student(
    nama: 'Rahmat Wibowo', // Pastikan nama field sesuai dengan model
    npm: 23621092, // Pastikan ini sesuai dengan tipe data di model
    prodi: 'Sistem Informasi', // Pastikan ini sesuai dengan tipe data di model
    fakultas: 'Ilmu Komputer', // Pastikan ini sesuai dengan tipe data di model
    universitas:
        'Universitas Yapis Papua', // Pastikan ini sesuai dengan tipe data di model
  );

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata Mahasiswa'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(
          255,
          166,
          172,
          172,
        ), // Ganti dengan warna yang diinginkan
      ),
      body: Center(child: ProfileCard(student: student)),
    );
  }
}
