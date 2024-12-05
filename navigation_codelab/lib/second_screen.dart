import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dengan judul dan posisi center
      appBar: AppBar(
        centerTitle: true, // Menyusun judul di tengah
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Padding sekitar konten
          child: Row(
            // Menyusun widget secara horizontal (Row)
            mainAxisAlignment: MainAxisAlignment.center, // Menyusun elemen-elemen di tengah secara horizontal
            crossAxisAlignment: CrossAxisAlignment.center, // Menyusun elemen-elemen di tengah secara vertikal
            children: [
              // Teks di sebelah kiri
              Expanded(
                flex: 2, // Memberikan fleksibilitas lebar pada kolom teks (lebih besar daripada gambar)
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0), // Padding untuk memberikan jarak antara gambar dan teks
                  child: Column(
                    // Menyusun teks secara vertikal
                    mainAxisAlignment: MainAxisAlignment.center, // Menyusun teks di tengah secara vertikal
                    crossAxisAlignment: CrossAxisAlignment.start, // Menyusun teks dari kiri
                    children: [
                      // Teks pertama, nama
                      Text(
                        'Aurelia Davine Putri Nata',
                        style: TextStyle(
                          fontSize: 35, // Ukuran font besar untuk nama
                          fontWeight: FontWeight.bold, // Tebal
                        ),
                      ),
                      SizedBox(height: 20), // Jarak antara nama dan deskripsi

                      // Teks kedua, deskripsi
                      Text(
                        'Hello! I am Aurelia, a student of Ciputra University Makassar with a background in informatics. '
                        'I have experience in exam projects such as application development and UI/UX design. '
                        'In addition to education, I am also active in various committees and organizations on campus. '
                        'I have a lot of experience in managing events, making decorations for an event and other things.',
                        style: TextStyle(
                          fontSize: 16, // Ukuran font untuk deskripsi
                          color: Colors.grey[700], // Warna font abu-abu
                        ),
                        textAlign: TextAlign.justify, // Penyusunan teks agar rata kiri-kanan
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 30), // Jarak antara teks dan gambar

              // Gambar di sebelah kanan
              Expanded(
                flex: 1, // Memberikan fleksibilitas lebar pada gambar (lebih kecil daripada teks)
                child: Center(
                  child: ClipRRect(
                    // Membulatkan sudut gambar
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/aurel2.jpeg', // Gambar diambil dari folder assets
                      fit: BoxFit.cover, // Menjaga gambar sesuai dengan ruang yang ada
                      height: 400, // Tinggi gambar
                      width: 400, // Lebar gambar
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
