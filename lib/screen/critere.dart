import 'package:flutter/material.dart';
import 'package:tsr_maquette/widget/critere_details.dart';

class Critere extends StatelessWidget {
  const Critere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      constraints: BoxConstraints(
        minHeight: screenSize.height,
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CritereDetails(
            icon: Icon(
              Icons.location_on_outlined,
              color: Colors.grey,
            ),
            detail: "France",
          ),
          SizedBox(height: 15.0),
          CritereDetails(
            icon: Icon(
              Icons.female_outlined,
              color: Colors.grey,
            ),
            detail: "Tous les genres",
          ),
          SizedBox(height: 15.0),
          CritereDetails(
            icon: Icon(
              Icons.person_outline_rounded,
              color: Colors.grey,
            ),
            detail: "25-55 ans",
          ),
          SizedBox(height: 15.0),
          CritereDetails(
            icon: Icon(
              Icons.favorite_outline_rounded,
              color: Colors.grey,
            ),
            detail: "Lifestyle | Famille | Voyage | Business | Divertissement",
          ),
          SizedBox(height: 15.0),
          CritereDetails(
            icon: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            detail: "Facebook | Instagram",
          ),
          SizedBox(height: 15.0),
          CritereDetails(
            icon: Icon(
              Icons.group_outlined,
              color: Colors.grey,
            ),
            detail: "Toutes les communautés",
          ),
          SizedBox(height: 15.0),
          CritereDetails(
            icon: Icon(
              Icons.calendar_month_outlined,
              color: Colors.grey,
            ),
            detail: "Date finale: 23/06/2022",
          ),
          SizedBox(height: 15.0),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet cursus sit amet dictum sit. Vestibulum morbi blandit cursus risus at ultrices mi tempus. Et netus et malesuada fames ac.",
            style: TextStyle(color: Colors.black, fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
