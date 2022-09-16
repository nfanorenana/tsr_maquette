import 'package:flutter/material.dart';

class StarRow extends StatelessWidget {
  final String description;
  final int star;

  const StarRow({Key? key, required this.description, required this.star})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Text.rich(
      TextSpan(
        children: <InlineSpan>[
          for (var i = 0; i < star; i++)
            WidgetSpan(
              child: Icon(
                Icons.star_border_outlined,
                color: const Color.fromRGBO(112, 112, 112, 1),
                size: screenSize.width / 15,
              ),
            ),
          TextSpan(text: description),
        ],
      ),
      textAlign: TextAlign.start,
      style: const TextStyle(
        color: Color.fromRGBO(112, 112, 112, 1),
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
