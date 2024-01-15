import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DevoirScreen extends StatelessWidget {
  const DevoirScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Devoir Maison',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
