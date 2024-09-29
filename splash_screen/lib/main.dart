import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

// StatelessWidget
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF335CB0),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 33.0
          ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('asset/img/logo.png'),
                const SizedBox(height: 28.0),
                const CircularProgressIndicator(
                  color: Colors.white,
                ),
              ],
            )
        ));
  }
}
