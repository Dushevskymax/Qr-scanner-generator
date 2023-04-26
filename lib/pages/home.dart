import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("QR-Scanner/Generator"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(200, 50))
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/scanner');
                },
                child: const Text("QR-scanner",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(200, 50))
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/generator');
                }, 
                child: const Text(
                  "QR-generator",
                   style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              
            ],
          ),
        ),
      );
  }
}