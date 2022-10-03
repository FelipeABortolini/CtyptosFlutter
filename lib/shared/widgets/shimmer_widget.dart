import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/app_colors.dart';

class ShimmerWidget extends StatelessWidget {
  final bool shimmer;
  final Widget shimmerChild;
  final Widget secondChild;

  const ShimmerWidget({
    Key? key,
    required this.shimmer,
    required this.shimmerChild,
    required this.secondChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return shimmer
        ? Shimmer.fromColors(
            baseColor: lightGrey,
            highlightColor: white,
            child: shimmerChild,
          )
        : secondChild;
  }
}
