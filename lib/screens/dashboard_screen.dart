import 'package:elimu_universite_mobile/screens/carreer_screen.dart';
import 'package:elimu_universite_mobile/screens/finance_screen.dart';
import 'package:elimu_universite_mobile/widgets/widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

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
                    cardMenue(context, EvaIcons.calendarOutline, "Emplois du temps", color: Colors.blue),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const FinanceScreen())
                        );
                      },
                      child: cardMenue(context, EvaIcons.barChart2Outline, "Finance", color: Colors.orange)),
                    
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cardMenue(context, EvaIcons.book, "e-book", color: Colors.red),
                    cardMenue(context, EvaIcons.volumeUpOutline, "Evénement et annonce", color: Colors.green)
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
                      child: cardMenue(context, EvaIcons.homeOutline, "Parcours", color: Colors.yellow.shade900)),
                    cardMenue(context, EvaIcons.pieChartOutline, "Moyenne(s) & Note(s)", color: Colors.purple),
                    
                  ],
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.all(15),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       cardMenue(context, EvaIcons.edit2Outline, "Devoir de maison"),
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