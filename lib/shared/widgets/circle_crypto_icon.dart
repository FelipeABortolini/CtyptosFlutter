import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CircleIconCrypto extends StatelessWidget {
  final String icon;

  const CircleIconCrypto({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: white,
      radius: 24,
      child: Image(
        image: AssetImage(icon),
      ),
    );
  }
}
