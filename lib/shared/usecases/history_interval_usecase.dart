import 'package:fl_chart/fl_chart.dart';

import '../repos/history_interval_repository.dart';

class HistoryIntervalUseCase {
  final HistoryIntervalRepository historyIntervalRepository = HistoryIntervalRepository();

  List<FlSpot> pricesListToListFlSpotUsecase(List<List> history, int days){
    return historyIntervalRepository.pricesListToListFlSpotRepository(history, days);
  }

  double getMinXChartUsecase(List<List> history, int days){
    return historyIntervalRepository.getMinXChartRepository(history, days);
  }

  double getMinYChartUsecase(List<List> history, int days){
    return historyIntervalRepository.getMinYChartRepository(history, days);
  }
}
