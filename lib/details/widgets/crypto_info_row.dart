import 'package:flutter/material.dart';

import 'package:flutter_application_2/shared/widgets/hide_monetary.dart';

class CryptoInfoRow extends StatelessWidget {
  final String textInfo;
  final String valueInfo;
  final TextStyle? styleText;
  final TextStyle? styleValue;
  final bool monetaryData;

  const CryptoInfoRow({
    Key? key,
    required this.textInfo,
    required this.valueInfo,
    required this.styleText,
    required this.styleValue,
    required this.monetaryData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          const Divider(thickness: 1),
          Container(
            height: 56,
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textInfo,
                  style: styleText,
                ),
                monetaryData
                    ? HideMonetary(
                        hiderWidth: 150,
                        textWidth: 150,
                        height: 30,
                        text: valueInfo,
                        align: Alignment.centerRight,
                        style: styleValue,
                      )
                    : Text(
                        valueInfo,
                        style: styleValue,
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
