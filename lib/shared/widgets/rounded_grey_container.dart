import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class RoundedGreyContainer extends StatelessWidget {
  final double width;
  final double height;

  const RoundedGreyContainer({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            startGradientHide,
            endGradientHide,
          ],
        ),
      ),
    );
  }
}
