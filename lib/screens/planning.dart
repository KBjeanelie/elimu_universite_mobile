import 'package:elimu_universite_mobile/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:elimu_universite_mobile/config/color_border_container.dart';
import 'package:elimu_universite_mobile/widget/custom_appbar.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> weekDays = ['Lun', 'Mar', 'Mer', 'Jeu', 'Ven', 'Sam', 'Dim'];

List<String> Cours = [
  'Algorithme',
  'Anglais',
  'Mathematique',
  'Poo',
  'JAVA',
  'PYTHON',
  'Francais',
  'Finances'
];

class EmploiDuTemps extends StatefulWidget {
  const EmploiDuTemps({super.key});

  @override
  State<EmploiDuTemps> createState() => _EmploiDuTempsState();
}

class _EmploiDuTempsState extends State<EmploiDuTemps> {
  late String selectedDay;

  @override
  void initState() {
    super.initState();
    selectedDay = getCurrentDay();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              IconlyLight.arrowLeft2,
              color: Colors.black,
            ),
          ),
          title: const CustomAppBar(
            text: 'Devoir Maison',
          ),
          elevation: 0.5,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (var day in weekDays)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedDay = day;
                          });
                        },
                        child: DayS(
                          jour: day,
                          isDay: day == selectedDay,
                          isRed: day == 'Sam' || day == 'Dim',
                        ),
                      ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade800,
                indent: 40,
                endIndent: 40,
                height: 1,
                thickness: 1,
              ),
              const SizedBox(
                height: 5,
              ),
              CoursTime(
                heure: '8:00',
                cours: 'Algorithme',
                bkColors: bkJaune,
              ),
              //heure de pause

              //
            ],
          ),
        ),
      ),
    );
  }
}

class CoursTime extends StatelessWidget {
  final String heure;
  final String cours;
  final Color bkColors;
  const CoursTime({
    super.key,
    required this.heure,
    required this.cours,
    required this.bkColors,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            heure,
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 17.5,
            ),
          ),
          Container(
            height: getProportionateScreenHeight(35),
            width: getProportionateScreenWidth(250),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: bkColors,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              cours,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DayS extends StatelessWidget {
  final bool isDay;
  final bool isRed;
  final String jour;

  DayS({
    Key? key,
    required this.jour,
    required this.isDay,
    required this.isRed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 47,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isDay ? const Color.fromARGB(171, 255, 153, 0) : null,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          isDay
              ? BoxShadow(
                  color: cJaune,
                  spreadRadius: 3,
                  blurRadius: 5,
                )
              : const BoxShadow(color: Colors.white),
        ],
      ),
      child: Text(
        jour,
        style: GoogleFonts.poppins(
          color: isDay ? Colors.white : (isRed ? Colors.red : Colors.black),
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

String getCurrentDay() {
  DateTime now = DateTime.now();
  int currentWeekday = now.weekday;

  switch (currentWeekday) {
    case 1:
      return 'Lun';
    case 2:
      return 'Mar';
    case 3:
      return 'Mer';
    case 4:
      return 'Jeu';
    case 5:
      return 'Ven';
    case 6:
      return 'Sam';
    case 7:
      return 'Dim';
    default:
      return 'Lun';
  }
}
