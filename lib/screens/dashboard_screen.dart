import 'package:elimu_universite_mobile/screens/carreer_screen.dart';
import 'package:elimu_universite_mobile/screens/devoir.dart';
import 'package:elimu_universite_mobile/screens/eventandAnnounce.dart';
import 'package:elimu_universite_mobile/screens/finance_screen.dart';
import 'package:elimu_universite_mobile/widgets/widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 15),
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cardMenue(context, IconlyLight.calendar, "Emplois du temps", color: Colors.blue),
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
                margin: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cardMenue(context, IconlyLight.bookmark, "e-book", color: Colors.red),
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
                margin: const EdgeInsets.all(15),
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
                    cardMenue(context, EvaIcons.pieChartOutline, "Évaluations", color: Colors.purple),
                    
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