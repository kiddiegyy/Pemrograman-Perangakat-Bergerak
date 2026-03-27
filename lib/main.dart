import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/images/monkasel.jpg"),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Text(
                "Surabaya Submarine Monument",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.calendar_today),
                      Text('Open Everyday'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                'The Surabaya Submarine Monument (Monkasel) is a unique historical attraction in Surabaya, Indonesia, featuring a real submarine called KRI Pasopati 410 that once served in the Indonesian Navy. Located in the city center, this monument allows visitors to explore the inside of the submarine and see important areas such as the control room, crew quarters, and torpedo section. It provides a clear and educational insight into naval history and the life of sailors, making it an interesting place for both tourists and students.',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(fontSize: 16),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.network(
                      "https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset("assets/images/monkasel1.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset("assets/images/monkasel2.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset("assets/images/monkasel3.jpg"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
