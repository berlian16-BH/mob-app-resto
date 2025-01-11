import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const Positioned(
            left: 35,
            top: 100,
            child: Text(
              'Welcome,',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color(0xFF19305C),
              ),
            ),
          ),
          const Positioned(
            left: 59,
            top: 180,
            child: Text(
              'to the restaurant app',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF19305C),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),
                  const SizedBox(
                    width: 246,
                    height: 222,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/logoresto.png'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'application that makes service easier',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF19305C),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Login Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login'); // Navigasi ke halaman login
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF19305C),
                      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  // Sign Up Button
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register'); // Navigasi ke halaman register
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      side: const BorderSide(
                        color: Color(0xFF19305C),
                      ),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF19305C),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
