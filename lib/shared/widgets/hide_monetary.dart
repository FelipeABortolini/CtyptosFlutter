import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/providers.dart';
import '../../portfolio/widgets/scroll_text_widget.dart';
import 'rounded_grey_container.dart';

class HideMonetary extends HookConsumerWidget {
  final double hiderWidth;
  final double textWidth;
  final double height;
  final String text;
  final double? fontSize;
  final Alignment align;
  final Color? color;
  final TextStyle? style;
  final bool? shimmer;

  const HideMonetary({
    Key? key,
    required this.hiderWidth,
    required this.textWidth,
    required this.height,
    required this.text,
    this.fontSize,
    required this.align,
    this.color,
    this.style,
    required this.shimmer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visible = ref.watch(visibleProvider.state);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Visibility(
          visible: visible.state && !shimmer!,
          child: ScrollText(
            width: textWidth,
            align: align,
            widget: Text(
              text,
              style: style ??
                  TextStyle(
                    fontSize: fontSize,
                    color: color,
                  ),
            ),
          ),
        ),
        Visibility(
          visible: !(visible.state) || shimmer!,
          child: RoundedGreyContainer(
            width: hiderWidth,
            height: height,
          ),
        ),
      ],
    );
  }
}
