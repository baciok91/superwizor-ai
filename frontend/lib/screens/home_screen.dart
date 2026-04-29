import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      backgroundColor: const Color(0xFF0F2027),
      appBar: AppBar(
        backgroundColor: const Color(0xFF203A43),
        title: Text(
          'Superwizor AI',
          style: GoogleFonts.outfit(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => FirebaseAuth.instance.signOut(),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.supervised_user_circle, size: 64, color: Colors.blueAccent),
            const SizedBox(height: 16),
            Text(
              'Cześć, ${user?.email}!',
              style: GoogleFonts.inter(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'TODO Faza 1.4: lista kartotek z clinical-svc.',
              style: TextStyle(
                color: Colors.white .withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
