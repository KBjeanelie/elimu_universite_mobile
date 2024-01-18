import 'package:elimu_universite_mobile/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 1, color: Colors.grey)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            "Profile",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body:  const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          EleveCard(
            name: "Ruth",
            photoProfil: 'assets/user_profile.jpeg',
            country: "SAN FRANCISCO, CA",
          ),
        ],
      ),
    );
  }
}