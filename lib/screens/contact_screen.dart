import 'package:elimu_universite_mobile/config/size_config.dart';
import 'package:elimu_universite_mobile/config/themes.dart';
import 'package:elimu_universite_mobile/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                size: 35,
                Icons
                    .qr_code_scanner_rounded,   color: Colors.black,
              ),
            ),
          ],
          title: Center(
            child: Text(
              "Contacts",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                color: black,
                fontSize: getProportionateScreenHeight(20)
              ),
            ),
          ),
        ),
        body: GestureDetector(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: List.generate(
                4,
                (index) => const EleveCard3(
                  name: "Will Kenny",
                  photoProfil: "assets/user_profile.jpeg",
                ),
              ),
            ),
          ),
        ),
    );
  }
}