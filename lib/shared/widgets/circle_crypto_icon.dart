import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CircleIconCrypto extends StatelessWidget {
  final String? icon;
  final bool shimmer;

  const CircleIconCrypto({
    Key? key,
    required this.icon,
    required this.shimmer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: white,
      radius: 24,
      child: shimmer ? null : Image.network(icon!),
    );
  }
}
