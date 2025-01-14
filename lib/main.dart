import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart'; // Import file tampilan
import 'screens/login_screen.dart';   // Import LoginScreen
import 'screens/register_screen.dart'; // Import RegisterScreen
import 'package:firebase_core/firebase_core.dart'; // Tambahkan ini

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Tambahkan ini untuk memastikan Flutter sudah diinisialisasi
  await Firebase.initializeApp(); // Inisialisasi Firebase
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WelcomeScreen(), // Halaman pertama yang muncul
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      routes: {
        '/login': (context) => const LoginScreen(), // Rute untuk halaman login
        '/register': (context) => const RegisterScreen(), // Rute untuk halaman register
      },
    );
  }
}
