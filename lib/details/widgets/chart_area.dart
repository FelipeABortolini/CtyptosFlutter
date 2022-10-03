import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'history_filter_chart.dart';
import 'line_chart_widget.dart';

import '../../shared/utils/app_colors.dart';
import '../../shared/utils/format_currency.dart';
import '../../shared/utils/styles.dart';

class ChartArea extends StatelessWidget {
  const ChartArea({
    Key? key,
    required this.currentPrice,
    required this.cryptoHistoryPrice,
  }) : super(key: key);

  final Decimal currentPrice;
  final List<List> cryptoHistoryPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            formatCurrency.format(currentPrice.toDouble()),
            style: titleH1Montserrat32Style(colorTextBlack),
          ),
          LineChartWidget(historyPrice: cryptoHistoryPrice),
          Container(
            height: 22,
            margin: const EdgeInsets.only(bottom: 15),
            child: Row(
              children: const [
                HistoryFilterChart(text: '5D', days: 5),
                HistoryFilterChart(text: '15D', days: 15),
                HistoryFilterChart(text: '30D', days: 30),
                HistoryFilterChart(text: '45D', days: 45),
                HistoryFilterChart(text: '90D', days: 90),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
