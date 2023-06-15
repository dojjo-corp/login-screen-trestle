import 'package:flutter/material.dart';


class SquareIcons extends StatelessWidget {
  const SquareIcons({
    super.key, 
    required this.imagePath,
    required this.onTap(),
  });

  final String imagePath;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8))
        ),
        // width: 100,
        height: 70,
        child: Image(image: AssetImage(imagePath))
      ),
    );
  }
}