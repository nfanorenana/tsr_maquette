import 'package:flutter/material.dart';
import 'package:tsr_maquette/widget/star_row.dart';

class RemunerationCard extends StatelessWidget {
  const RemunerationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(50.0),
        ),
        border: Border.all(
          color: Colors.white,
          width: 1.0,
          style: BorderStyle.solid,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(239, 239, 239, 1),
            offset: Offset(
              0.0,
              0.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 1.0,
          ), //BoxShadow
        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Rémunération",
            style: TextStyle(
              color: Color.fromRGBO(146, 150, 227, 1),
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "Pour chaque publication, nous attribuons une note sur 3 étoiles permettant une démultiplication des gains:",
            style: TextStyle(
              color: Color.fromRGBO(112, 112, 112, 1),
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10.0),
          StarRow(
            description:
                "profil dans la cible / pas de personnalisation du post",
            star: 1,
          ),
          StarRow(
            description:
                "profil dans la cible / personnalisation du visuel ou du text",
            star: 2,
          ),
          StarRow(
            description:
                "profil dans la cible / personnalisation complète du post",
            star: 3,
          ),
          SizedBox(height: 10.0),
          Text(
            "Plafond par post: 30 euros",
            style: TextStyle(
              color: Color.fromRGBO(112, 112, 112, 1),
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
