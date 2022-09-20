import 'package:flutter/material.dart';

class StackedImage extends StatelessWidget {
  final List<Widget> items;
  final TextDirection direction;
  final double size;
  final double xShift;
  final int totalCount;

  const StackedImage({
    Key? key,
    required this.items,
    this.direction = TextDirection.ltr,
    this.size = 100,
    this.xShift = 30,
    required this.totalCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    final allItems = items
        .asMap()
        .map((index, item) {
          final left = size - xShift;

          final value = Container(
            width: size,
            height: size,
            margin: EdgeInsets.only(left: left * index),
            child: item,
          );

          return MapEntry(index, value);
        })
        .values
        .toList();

    return Container(
      constraints: BoxConstraints(
        minWidth: screenSize.width / 3,
      ),
      decoration: const BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 1),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Stack(
            children: direction == TextDirection.ltr
                ? allItems.reversed.toList()
                : allItems,
          ),
          Text(
            "+ $totalCount",
            style: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
