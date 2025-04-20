import 'package:flutter/material.dart';
import 'package:login_app/features/auth/screens/login_screen.dart';
import 'package:login_app/features/auth/screens/splash_screen.dart';
import 'package:login_app/features/explorer/screens/select_explorer_screen.dart';
import 'package:login_app/features/game/screens/select_game_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dünya Kaşifi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/select-explorer': (context) => const SelectExplorerScreen(),
        '/select-game': (context) => const SelectGameScreen(),
      },
    );
  }
}
