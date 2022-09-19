import 'package:flutter/material.dart';
import 'package:tsr_maquette/widget/stacked_image.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context, {
    TextDirection direction = TextDirection.ltr,
  }) {
    const double size = 50;
    const double xShift = 30;
    final urlImages = [
      "assets/avatar/boy.png",
      "assets/avatar/boy2.png",
      "assets/avatar/girl.png"
    ];

    final items = urlImages.map((urlImage) => buildImage(urlImage)).toList();

    return StackedImage(
      direction: direction,
      items: items,
      size: size,
      xShift: xShift,
      totalCount: 87,
    );
  }

  Widget buildImage(String urlImage) {
    return ClipOval(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              urlImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
