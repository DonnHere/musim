import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import halaman Home

class HalBeranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Column(
        children: [
          // Bagian atas dengan desain lengkung
          Stack(
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 80,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          // Ilustrasi
          Image.asset(
            'assets/materi_edukasi.jpg', // Ganti dengan nama file ilustrasi Anda
            height: 150,
            errorBuilder: (context, error, stackTrace) {
              return Icon(
                Icons.image_not_supported,
                size: 150,
                color: Colors.grey,
              );
            },
          ),
          SizedBox(height: 20),
          // Judul dan deskripsi
          Text(
            'SISTEM PENANGANAN PERUBAHAN\nIKLIM DI INDONESIA',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Dapatkan Informasi Disekitar Anda',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          Spacer(),
          // Tombol "Mulai"
          ElevatedButton(
            onPressed: () {
              // Pindah ke halaman fitur
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Beranda()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Warna latar belakang tombol
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
            ),
            child: Text(
              'MULAI',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30),
          // Bagian bawah dengan desain lengkung
          Stack(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
