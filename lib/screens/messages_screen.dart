import 'package:elimu_universite_mobile/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
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
              "Contact",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
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
        ),
        body: Column(
          children: List.generate(
            4,
            (index) => const EleveCard2(
              name: "Will Kenny",
              photoProfil: "assets/user_profile.jpeg",
              descrip:
                  "I can't help but be filled with anticipation and gratitude at the thought of sharing this adventure with such special people. Together we will create memories that will transcend time",
            ),
          ),
        ),
    );
  }
}