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
        // direction: Axis.vertical,

        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.grey),
          ),
          tag != null
              ? Text(
                  tag!,
                  textAlign: TextAlign.start,
                  style: const TextStyle(color: Colors.black, fontSize: 20.0),
                )
              : const SizedBox.shrink(),
          Text(
            content,
            textAlign: TextAlign.start,
            style: const TextStyle(color: Colors.black, fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
