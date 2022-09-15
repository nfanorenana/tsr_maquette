import 'package:flutter/material.dart';

class CritereDetails extends StatelessWidget {
  final Icon icon;
  final String detail;

  const CritereDetails({
    Key? key,
    required this.icon,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          icon,
          const SizedBox(
            width: 5.0,
          ),
          Flexible(
            child: Text(
              detail,
              style: const TextStyle(color: Colors.black, fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
