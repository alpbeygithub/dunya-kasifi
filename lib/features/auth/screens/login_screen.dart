import 'package:flutter/material.dart';
import '../widgets/login_form.dart';
import 'splash_screen.dart'; // veya gitmek istediğin ekran

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFd0ecf8),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Maceracıyı Tanıyalım',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    const SizedBox(height: 24),
                    LoginForm(
                      onSubmit: (name, seatLetter, seatNumber) {
                        Navigator.pushReplacementNamed(context, '/select-explorer');
                      },
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: Image.asset(
                'assets/images/thy_logo.png',
                width: 40,
                height: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
