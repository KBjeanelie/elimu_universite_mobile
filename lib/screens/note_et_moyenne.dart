import 'package:elimu_universite_mobile/config/color_border_container.dart';
import 'package:elimu_universite_mobile/config/size_config.dart';
import 'package:elimu_universite_mobile/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';

class MoyenneScreen extends StatelessWidget {
  const MoyenneScreen({super.key});
  @override
  Widget build(BuildContext context) {
    bool _isAdmit = false;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          elevation: 1,
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
            text: 'Note(s) et Moyenne(s)',
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Container(
                  height: getProportionateScreenHeight(290),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          blurRadius: 5,
                          spreadRadius: 2,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //bord container
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 18,
                        ),
                        child: Container(
                          height: double.infinity,
                          width: 5,
                          decoration: BoxDecoration(
                            color: cBlue,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      //
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 10,
                        ),
                        child: Container(
                          // color: Colors.green,
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Parcours',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const InfoLine(
                                denomination: 'Filière',
                                resultat: 'information',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const InfoLine(
                                denomination: 'Semestre',
                                resultat: 'information',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const InfoLine(
                                denomination: 'Niveau',
                                resultat: 'information',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const InfoLine(
                                denomination: 'Moyenne',
                                resultat: 'information',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const InfoLine(
                                denomination: 'Classement',
                                resultat: 'information',
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Divider(
                                color: Colors.black38,
                                indent: 40,
                                endIndent: 40,
                                thickness: 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Décision',
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Decision(
                                    isAdmi: _isAdmit,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      //bord container
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: Container(
                          height: double.infinity,
                          width: 5,
                          decoration: BoxDecoration(
                            color: cBlue,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Decision extends StatelessWidget {
  final bool isAdmi;

  const Decision({
    super.key,
    required this.isAdmi,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isAdmi ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        isAdmi ? 'Admis' : "Recalé",
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 17,
        ),
      ),
    );
  }
}

class InfoLine extends StatelessWidget {
  final String denomination;
  final String resultat;
  const InfoLine({
    super.key,
    required this.denomination,
    required this.resultat,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          denomination,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        Text(
          resultat,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
