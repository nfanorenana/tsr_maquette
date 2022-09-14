import 'package:flutter/material.dart';
import 'package:tsr_maquette/app_theme.dart';

class TitleCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const TitleCard({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title.toUpperCase(),
            style: AppTheme.defaultTitleTextStyle,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            subtitle.toUpperCase(),
            style: AppTheme.defaultTitleTextStyle,
          ),
        ],
      ),
    );
  }
}
