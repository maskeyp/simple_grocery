import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 100.0, right: 100.0, top: 120, bottom: 20),
            child: Image.asset('lib/images/grocery-cart.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              'Shop with US',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          ),
          const SizedBox(height: 40),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const HomeScreen();
            })),
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(255, 112, 91, 222)),
              child: const Text(
                "Shop Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
