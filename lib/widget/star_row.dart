import 'package:flutter/material.dart';

class StarRow extends StatelessWidget {
  final String description;
  final int star;

  const StarRow({Key? key, required this.description, required this.star})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      // width: screenSize.width * 0.8,
      child: Row(
        children: [
          for (var i = 0; i < star; i++)
            const Icon(
              Icons.star_border_outlined,
              color: Color.fromRGBO(112, 112, 112, 1),
            ),
          const SizedBox(width: 5.0),
          Flexible(
            child: Text(
              description,
              style: const TextStyle(
                color: Color.fromRGBO(112, 112, 112, 1),
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
