import 'package:flutter/material.dart';

import '../../shared/utils/styles.dart';
import '../../shared/widgets/circle_crypto_icon.dart';

class CryptoTitle extends StatelessWidget {
  final String name;
  final String initials;
  final String icon;

  const CryptoTitle({
    Key? key,
    required this.name,
    required this.initials,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, right: 18, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleH1BlackStyle(),
              ),
              const SizedBox(height: 4),
              Text(
                initials,
                style: subtitleGreyStyle(),
              ),
            ],
          ),
          Column(
            children: [
              CircleIconCrypto(icon: icon),
              const SizedBox(
                height: 22,
              )
            ],
          )
        ],
      ),
    );
  }
}
