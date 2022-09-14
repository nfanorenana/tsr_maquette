import 'package:flutter/material.dart';
import 'package:tsr_maquette/app_theme.dart';
import 'package:tsr_maquette/widget/price.dart';
import 'package:tsr_maquette/widget/sn_logo.dart';
import 'package:tsr_maquette/widget/title_card.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Price(price: '23 000'),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "19 342€ restant",
            style: AppTheme.defaultTextStyle,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const SnLogo(
            color: Colors.white,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const TitleCard(
            title: 'knorr',
            subtitle: 'bouillon cube halal',
          ),
          const SizedBox(
            height: 20.0,
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
