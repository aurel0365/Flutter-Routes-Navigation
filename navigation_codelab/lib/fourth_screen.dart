import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dengan posisi judul di tengah
      appBar: AppBar(
        centerTitle: true, // Menyusun judul di tengah
      ),
      body: Center(
        // Menyusun seluruh konten di tengah layar
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Padding di sekitar gambar agar tidak terlalu rapat dengan tepi
          child: Image.asset(
            'assets/images/cvi/cv.jpeg', // Ganti dengan jalur gambar CV Anda
            fit: BoxFit.contain,  // Menggunakan BoxFit.contain agar gambar menyesuaikan ukuran, tetapi tidak ter-zoom
            width: double.infinity, // Menyusun gambar dengan lebar penuh (sesuai dengan lebar layar)
            alignment: Alignment.center,  // Pastikan gambar tetap berada di tengah layar
          ),
        ),
      ),
    );
  }
}
