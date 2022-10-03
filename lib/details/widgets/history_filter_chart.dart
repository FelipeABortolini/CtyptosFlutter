import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/utils/app_colors.dart';
import '../../shared/utils/styles.dart';
import '../../shared/providers/providers.dart';

class HistoryFilterChart extends HookConsumerWidget {
  final String text;
  final int days;

  const HistoryFilterChart({
    Key? key,
    required this.text,
    required this.days,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historyInterval = ref.watch(historyIntervalProvider);

    return InkWell(
      onTap: () {
        historyInterval.changeIntervalDays(days);
        historyInterval.setMinXChart();
        historyInterval.setMinYChart();
      },
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          color: '${historyInterval.getIntervalDays()}D' == text ? lightGrey : white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          text,
          style: textHistoryFilterChartStyle('${historyInterval.getIntervalDays()}D' == text),
        ),
      ),
    );
  }
}
