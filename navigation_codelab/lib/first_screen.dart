import 'package:flutter/material.dart';
import 'second_screen.dart'; // Mengimpor second screen
import 'third_screen.dart'; // Mengimpor third screen
import 'fourth_screen.dart'; // Mengimpor fourth screen
import 'fifth_screen.dart'; // Mengimpor fifth screen

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Menata widget di tengah
        children: [
          CircleAvatar(
            radius: 100, // Membuat gambar avatar berbentuk lingkaran dengan radius 100
            backgroundImage: AssetImage('assets/images/aurelnama.jpeg'), // Menentukan gambar avatar
          ),
          SizedBox(height: 20), // Memberi jarak antara gambar dan teks
          Text(
            'Aurelia Davine Putri Nata', // Nama pengguna
            style: TextStyle(
              fontSize: 24, // Ukuran font untuk nama
              fontWeight: FontWeight.bold, // Menebalkan teks
            ),
          ),
          SizedBox(height: 5), // Memberi jarak antara nama dan teks selamat datang
          Text(
            'Welcome to my codelab', // Pesan sambutan
            style: TextStyle(fontSize: 16, color: Colors.grey), // Ukuran font dan warna teks sambutan
          ),
          SizedBox(height: 40), // Memberi jarak sebelum tombol
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Menata tombol secara horizontal di tengah
            children: [
              ElevatedButton(
                onPressed: () { // Menavigasi ke SecondScreen saat tombol ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
                child: Text('About Me'), // Teks tombol "About Me"
              ),
              SizedBox(width: 16), // Memberi jarak antar tombol
              ElevatedButton(
                onPressed: () { // Menavigasi ke ThirdScreen saat tombol ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdScreen()),
                  );
                },
                child: Text('Activity'), // Teks tombol "Activity"
              ),
              SizedBox(width: 16), // Memberi jarak antar tombol
              ElevatedButton(
                onPressed: () { // Menavigasi ke FourthScreen saat tombol ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FourthScreen()),
                  );
                },
                child: Text('CV'), // Teks tombol "CV"
              ),
              SizedBox(width: 16), // Memberi jarak antar tombol
              ElevatedButton(
                onPressed: () { // Menavigasi ke FifthScreen saat tombol ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FifthScreen()),
                  );
                },
                child: Text('Contact Me'), // Teks tombol "Contact Me"
              ),
            ],
          ),
        ],
      ),
    );
  }
}
