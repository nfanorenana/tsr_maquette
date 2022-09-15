import 'package:flutter/material.dart';
import 'package:tsr_maquette/app_theme.dart';

class TextCard extends StatelessWidget {
  final String title;
  final String? tag;
  final String content;

  const TextCard({
    Key? key,
    required this.title,
    this.tag,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color.fromRGBO(146, 150, 227, 1),
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          tag != null
              ? Text(
                  tag!,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: Color.fromRGBO(146, 150, 227, 1),
                    fontSize: 18.0,
                  ),
                )
              : const SizedBox.shrink(),
          Text(
            content,
            textAlign: TextAlign.start,
            style: const TextStyle(color: Colors.black, fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
