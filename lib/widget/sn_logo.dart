import 'package:flutter/material.dart';

class SnLogo extends StatelessWidget {
  final Color color;

  const SnLogo({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/sn_logo/facebook.png',
            height: 32,
            width: 32,
            color: color,
          ),
          const SizedBox(
            width: 15.0,
          ),
          Image.asset(
            'assets/sn_logo/instagram.png',
            height: 32,
            width: 32,
            color: color,
          )
        ],
      ),
    );
  }
}
