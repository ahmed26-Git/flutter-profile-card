import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1F3B5B),

        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text(
            "Ahmed's Profile",
            style: TextStyle(color: Colors.white),
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 3),
                image: const DecorationImage(
                  image: AssetImage("assets/me.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              "Ahmed Ibrahem",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              "Flutter Developer",
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 15,
                ),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Contact Saved 👌")),
                );
              },
              child: const Text(
                "Save Contact",
                style: TextStyle(color: Colors.white),
              ),
            ),

            const SizedBox(height: 25),

            Container(width: 250, height: 1, color: Colors.white24),

            const SizedBox(height: 20),

            buildButton("LinkedIn"),
            buildButton("Portfolio"),
            buildButton("WhatsApp"),
            buildButton("Website"),
          ],
        ),
      ),
    );
  }

  Widget buildButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
