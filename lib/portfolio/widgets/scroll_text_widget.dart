import 'package:flutter/material.dart';

class ScrollText extends StatelessWidget {
  final Widget widget;
  final double width;
  final Alignment align;

  const ScrollText({
    Key? key,
    required this.widget,
    required this.width,
    required this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: align,
      width: width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: widget,
      ),
    );
  }
}
