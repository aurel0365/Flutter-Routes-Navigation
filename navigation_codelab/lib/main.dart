import 'package:flutter/material.dart';
import 'first_screen.dart'; // Mengimpor screen pertama

void main() => runApp(MyApp()); // Menjalankan aplikasi dengan MyApp sebagai root widget

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Codelab', // Menentukan judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue, 
      ),
      home: FirstScreen(), // Menetapkan FirstScreen sebagai screen pertama yang tampil saat dijalankan
    );
  }
}
