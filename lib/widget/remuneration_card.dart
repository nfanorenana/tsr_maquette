import 'package:flutter/material.dart';

class RemunerationCard extends StatelessWidget {
  const RemunerationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        color: Colors.red,
      ),
      child: Column(
        children: const [
          Text(
            "Rémunération",
          ),
          SizedBox(height: 10.0),
          Text(
              "Pour chaque publication, nous attribuons une note sur 3 étoiles permettant une démultiplication des gains:")
        ],
      ),
    );
  }
}
