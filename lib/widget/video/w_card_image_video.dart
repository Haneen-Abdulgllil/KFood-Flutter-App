

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetImageVideo extends StatelessWidget {
  const WidgetImageVideo({
    super.key,
    this.height = 130,
    this.width = double.infinity,
    required this.image,
  });
  final double height;
  final double width;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // image
            Image.network(
              image,
              height: height,
              width: width,
              fit: BoxFit.cover,
            ),
            // icon play
            const Icon(
              CupertinoIcons.play_circle,
              size: 50,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}