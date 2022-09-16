import 'package:flutter/material.dart';
import 'package:tsr_maquette/app_theme.dart';
import 'package:tsr_maquette/widget/price.dart';
import 'package:tsr_maquette/widget/sn_logo.dart';
import 'package:tsr_maquette/widget/title_card.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Price(price: '23 000'),
          SizedBox(
            height: screenSize.height / 30,
          ),
          Text(
            "19 342€ restant",
            style: AppTheme.defaultTextStyle,
          ),
          SizedBox(
            height: screenSize.height / 30,
          ),
          const SnLogo(
            color: Colors.white,
          ),
          SizedBox(
            height: screenSize.height / 30,
          ),
          const TitleCard(
            title: 'knorr',
            subtitle: 'bouillon cube halal',
          ),
          SizedBox(
            height: screenSize.height / 30,
          ),
          const Text(
            'objectif de la campagne en quelques mots',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
