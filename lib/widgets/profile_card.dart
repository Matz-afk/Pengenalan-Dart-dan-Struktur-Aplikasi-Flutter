import 'package:flutter/material.dart';
import '../models/student.dart';

class ProfileCard extends StatelessWidget {
  final Student student;

  const ProfileCard({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width, // Mengatur lebar sesuai layar
        height:
            MediaQuery.of(context).size.height, // Mengatur tinggi sesuai layar
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/background.jpg",
            ), // Ganti dengan path gambar latar belakang
            fit: BoxFit.cover, // Memastikan gambar memenuhi area
          ),
        ),
        child: Center(
          child: Card(
            elevation: 4,
            margin: EdgeInsets.all(20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage(
                      'assets/matt.jpg',
                    ), // Gambar profil
                  ),
                  SizedBox(height: 15),
                  Text(
                    student.nama,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('NPM: ${student.npm}', style: TextStyle(fontSize: 18)),
                  Text(
                    'Program Studi: ${student.prodi}',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'Fakultas: ${student.fakultas}',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'Universitas: ${student.universitas}',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
