// C'est dans ce fichier que sera créer tous les widgets nécéssaire à notre application
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../config/themes.dart';


Container messageGroupModel(BuildContext context){
  return Container(
    margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
    child: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 140),
          child: CircleAvatar(backgroundColor: Colors.grey.shade500,)
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 15),
            padding: const EdgeInsets.only(top: 5, left: 8, right: 8, bottom: 5),
            decoration: BoxDecoration(
              color: getColorFromHex("#FAFF00"),
              borderRadius: BorderRadius.circular(5)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                customeTextStyle("Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée."),
                Container(
                  child: customeTextStyle("12:41"),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}


Container messageGroupUser(BuildContext context){
  return Container(
    margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
    child: Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.only(top: 5, left: 8, right: 8, bottom: 5),
            decoration: BoxDecoration(
              color: getColorFromHex("#00000008"),
              borderRadius: BorderRadius.circular(5)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                customeTextStyle("Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée."),
                Container(
                  child: customeTextStyle("12:41"),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 140),
          child: CircleAvatar(backgroundColor: Colors.grey.shade500,)
        ),
      ],
    ),
  );
}


Container cardFinance(BuildContext context){
  return Container(
    margin: top,
    padding: const EdgeInsets.all(25),
    width: MediaQuery.sizeOf(context).width * 0.9,
    height: MediaQuery.sizeOf(context).height * 0.2,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.grey.shade100
    ),
    child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customeTextStyle("Frais Mensuel", size: 17, fontWeight: FontWeight.bold),
          customeTextStyle("Octobre", size: 17, fontWeight: FontWeight.bold),
        ],
      ),
      Container(
        margin: const EdgeInsets.only(top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customeTextStyle("Remis"),
            customeTextStyle("30 000F CFA"),
          ],
        ),
      ),

      Container(
        margin: const EdgeInsets.only(top: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customeTextStyle("Reste"),
            customeTextStyle("0F CFA"),
          ],
        ),
      ),

      Container(
        margin: top,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customeTextStyle("Total", size: 17, fontWeight: FontWeight.bold),
            customeTextStyle("30 000F CFA", size: 17, fontWeight: FontWeight.bold),
          ],
        ),
      )
    ]),
  );
}

Container cardMenue(BuildContext context, IconData icon, String label, {Color color = black}){
  return Container(
    width: MediaQuery.sizeOf(context).width * 0.4,
    height: MediaQuery.sizeOf(context).height * 0.2,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5), // Couleur de l'ombre
          spreadRadius: 5, // Étendue de l'ombre
          blurRadius: 7, // Flou de l'ombre
          offset: const Offset(0, 3), // Décalage de l'ombre
        ),
      ]
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: top,
          child: customeIcon(icon, color: color, iconSize: 80,)),
        Container(
          margin: top,
          alignment: Alignment.center,
          child: customeTextStyle(label))
      ],
    ),
  );
}

Container cardCareer(BuildContext context){
  return Container(
    margin: const EdgeInsets.only(top: 30),
    width: MediaQuery.sizeOf(context).width * 0.8,
    height: MediaQuery.sizeOf(context).height * 0.42,
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5), // Couleur de l'ombre
          spreadRadius: 5, // Étendue de l'ombre
          blurRadius: 7, // Flou de l'ombre
          offset: const Offset(0, 3), // Décalage de l'ombre
        ),
      ]
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: top,
          alignment: Alignment.center,
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color: getColorFromHex("#A066FF"),
            borderRadius: BorderRadius.circular(50)
          ),
          child: customeIcon(EvaIcons.homeOutline, iconSize: 35, color: getColorFromHex("#794DC0")),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: customeTextStyle("Parcours :", size: 17, fontWeight: FontWeight.w600),
        ),
        Container(
          child: customeTextStyle("Lic Info 1", fontWeight: FontWeight.w600),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 5),
          child: lineBar,
        ),
        Container(
          child: customeTextStyle("Niveau :", size: 17, fontWeight: FontWeight.w600),
        ),
        Container(
          child: customeTextStyle("Première année", fontWeight: FontWeight.w600),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 5),
          child: lineBar,
        ),
        Container(
          child: customeTextStyle("Moyenne :", size: 17, fontWeight: FontWeight.w600),
        ),
        Container(
          child: customeTextStyle("12,50", fontWeight: FontWeight.w600),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 5),
          child: lineBar,
        ),
        Container(
          child: customeTextStyle("Année académique :", size: 17, fontWeight: FontWeight.w600),
        ),
        Container(
          child: customeTextStyle("2022 - 2023", fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}


class EleveCard extends StatefulWidget {
  final String name;
  final String photoProfil;
  final String country;
  const EleveCard({
    Key? key,
    required this.name,
    required this.photoProfil,
    required this.country,
  }) : super(key: key);

  @override
  State<EleveCard> createState() => _EleveCardState();
}

class _EleveCardState extends State<EleveCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          ClipOval(
            child: Image.asset(
              widget.photoProfil,
              width: 110,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.name, // Utilisez widget.nomPrenom ici
            style: GoogleFonts.poppins(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            widget.country, // Utilisez widget.nomPrenom ici
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}


class EleveCard2 extends StatefulWidget {
  final String name;
  final String photoProfil;
  final String? descrip;
  const EleveCard2({
    Key? key,
    required this.name,
    required this.photoProfil,
    this.descrip,
  }) : super(key: key);

  @override
  State<EleveCard2> createState() => _EleveCard2State();
}

class _EleveCard2State extends State<EleveCard2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              
                ClipOval(
                  child: Image.asset(
                    widget.photoProfil,
                    width: 70,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8,bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.name,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                     Container(
                    constraints: BoxConstraints(maxWidth:275),  child: Text(
                      'HELLO WORD',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 4,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

