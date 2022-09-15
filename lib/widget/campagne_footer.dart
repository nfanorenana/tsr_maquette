import 'package:flutter/material.dart';

class CampagneFooter extends StatelessWidget {
  const CampagneFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
        ),
        color: Colors.blue,
      ),
    );
  }
}
