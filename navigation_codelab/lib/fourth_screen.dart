import 'package:flutter/material.dart';
import 'package:navigation_codelab/first_screen.dart';

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CV'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Mengganti layar saat tombol back ditekan
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => FirstScreen()),
            );
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            'assets/images/cvi/cv.jpeg',
            fit: BoxFit.contain,
            width: double.infinity,
            alignment: Alignment.center,
          ),
        ),
      ),
      drawer: FirstScreen(),
    );
  }
}
