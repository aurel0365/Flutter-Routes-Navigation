import 'package:flutter/material.dart';
import 'package:navigation_codelab/first_screen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('About Me'),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aurelia Davine Putri Nata',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Hello! I am Aurelia, a student of Ciputra University Makassar with a background in informatics. '
                        'I have experience in exam projects such as application development and UI/UX design. '
                        'In addition to education, I am also active in various committees and organizations on campus. '
                        'I have a lot of experience in managing events, making decorations for an event and other things.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 30),
              Expanded(
                flex: 1,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/aurel2.jpeg',
                      fit: BoxFit.cover,
                      height: 400,
                      width: 400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: FirstScreen(),
    );
  }
}
