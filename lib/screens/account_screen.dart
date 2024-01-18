import 'package:elimu_universite_mobile/config/size_config.dart';
import 'package:elimu_universite_mobile/config/themes.dart';
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
        backgroundColor: white,
        title: Center(
          child: Text(
            "Profile",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              color: black,
              fontSize: getProportionateScreenHeight(20)
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