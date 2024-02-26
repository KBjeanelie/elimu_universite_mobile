import 'package:elimu_universite_mobile/config/themes.dart';
import 'package:elimu_universite_mobile/screens/account_screen.dart';
import 'package:elimu_universite_mobile/screens/carreer_screen.dart';
import 'package:elimu_universite_mobile/screens/ebook.dart';
import 'package:elimu_universite_mobile/screens/eventand_announce.dart';
import 'package:elimu_universite_mobile/screens/finance_screen.dart';
import 'package:elimu_universite_mobile/screens/note_et_moyenne.dart';
import 'package:elimu_universite_mobile/screens/planning.dart';
import 'package:elimu_universite_mobile/widgets/widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: customeTextStyle("Bonjour, Ruth", size: 14),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AccountScreen())
              );
            },
            icon: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: customeIcon(IconlyLight.profile),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 15),
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20, bottom: 20),
                child: customeTextStyle("Tableau de bord", size: 18, fontWeight: FontWeight.w700),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const EmploiDuTemps())
                        );
                      },
                      child: cardMenue(context, IconlyLight.calendar, "Emplois du temps", color: Colors.blue)),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const FinanceScreen())
                        );
                      },
                      child: cardMenue(context, IconlyLight.chart, "Finance", color: Colors.orange)),
                    
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25, right: 25, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const EbookScreen())
                        );
                      },
                      child: cardMenue(context, IconlyLight.bookmark, "e-book", color: Colors.red)),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const EventAnnouce())
                        );
                      },
                      child: cardMenue(context, IconlyLight.volumeUp, "Information", color: Colors.green))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25, right: 25, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const CarreerScreen())
                        );
                      },
                      child: cardMenue(context, IconlyLight.work, "Parcours", color: Colors.yellow.shade900)),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const MoyenneScreen())
                        );
                      },
                      child: cardMenue(context, EvaIcons.pieChartOutline, "Évaluations", color: Colors.purple)),
                    
                  ],
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.all(15),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       GestureDetector(
              //         onTap: (){
              //           Navigator.push(context,
              //             MaterialPageRoute(builder: (context) => const DevoirScreen())
              //           );
              //         },
              //         child: cardMenue(context, IconlyLight.editSquare, "Devoir de maison")),
              //       cardMenue(context, EvaIcons.checkmarkSquare, "Présence"),
              //     ],
              //   ),
              // ),
            ]
          ),
        ),
      ),
    );
  }
}