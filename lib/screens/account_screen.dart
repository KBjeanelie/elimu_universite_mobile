import 'package:elimu_universite_mobile/config/size_config.dart';
import 'package:elimu_universite_mobile/config/themes.dart';
import 'package:elimu_universite_mobile/screens/login.dart';
import 'package:elimu_universite_mobile/screens/security_screen.dart';
import 'package:elimu_universite_mobile/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isOn = false;
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        centerTitle: true,
        title: Text(
          "Profile",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              color: black,
              fontSize: getProportionateScreenHeight(18)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const EleveCard(
            name: "Beth",
            photoProfil: 'assets/user_profile.jpeg',
            country: "BRAZZAVILLE, CG",
          ),
          const Divider(
            color: Colors.black,
            indent: 100,
            endIndent: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(25)),
            child: Row(
              children: [
                Text(
                  'Support',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(25)),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  ListTile(
                    enableFeedback: true,
                    leading: Text(
                      'Notification',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Switch(
                      activeColor: Colors.orange,
                      value: isOn,
                      onChanged: (value) {
                        setState(() {
                          isOn = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    enableFeedback: true,
                    splashColor: Colors.orange,
                    enabled: true,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecurityScreen(),
                        ),
                      );
                    },
                    leading: Text(
                      'Securité',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: const Icon(
                      IconlyLight.arrowRight2,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    enableFeedback: true,
                    leading: Text(
                      'Dark mode',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Switch(
                      activeColor: Colors.orange,
                      value: isDark,
                      onChanged: (value) {
                        setState(() {
                          isDark = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            indent: 100,
            endIndent: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(25)),
            child: Row(
              children: [
                Text(
                  'Support',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(25)),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  ListTile(
                    enableFeedback: true,
                    enabled: true,
                    leading: Text(
                      'Help Center',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: const Icon(
                      IconlyLight.arrowRight2,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    enableFeedback: true,
                    splashColor: Colors.orange,
                    enabled: true,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecurityScreen(),
                        ),
                      );
                    },
                    leading: Text(
                      'Rapporter un bug',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: const Icon(
                      IconlyLight.arrowRight2,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(30),
            ),
            child: GestureDetector(
              onTap: () {
                debugPrint('logout');
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ));
              },
              child: Row(
                children: [
                  const Icon(
                    IconlyBroken.logout,
                    color: Colors.red,
                    size: 28,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Log out",
                    style: GoogleFonts.poppins(
                      color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
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
