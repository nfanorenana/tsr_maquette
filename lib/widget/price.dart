import 'package:flutter/material.dart';
import 'package:tsr_maquette/app_theme.dart';

class Price extends StatelessWidget {
  final String price;

  const Price({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      decoration: const BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Text(
        "$price€",
        style: AppTheme.defaultTextStyle,
      ),
    );
  }
}
