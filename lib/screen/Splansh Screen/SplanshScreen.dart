import 'dart:async';
import 'package:flutter/material.dart';

import '../Login_Screen/Login_Screen.dart';

// Import your Login or Home screen here
// import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()), // Your next screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // A soft off-white or light green background fits your logo well
      backgroundColor: const Color(0xFFF9FBF9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1. Your Logo Image
            Image.asset(
              'assets/logo.png', // Ensure this path matches your pubspec.yaml
              width: 180,
              height: 180,
            ),

            const SizedBox(height: 24),

            // 2. Loading Indicator (Optional)
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF4CAF50)), // Match the logo green
              strokeWidth: 3,
            ),
          ],
        ),
      ),
    );
  }
}