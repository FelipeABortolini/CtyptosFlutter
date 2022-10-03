import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
// import '../../details/controller/details_controller.dart';

import '../usecases/history_interval_usecase.dart';

class HistoryIntervalController extends ChangeNotifier {
  final historyIntervalUseCase = HistoryIntervalUseCase();
  // final detailsController = DetailsController();
  double minX = 0;
  double minY = 0;
  int intervalDays = 5;
  List<List> listPricesChart = [];

  List<FlSpot> pricesListToListFlSpot() {
    return historyIntervalUseCase.pricesListToListFlSpotUsecase(listPricesChart, intervalDays);
  }

  void setPricesHistory(List<List> listPrices){
    listPricesChart = listPrices;
    notifyListeners();
  }

  void changeIntervalDays(int days){
    intervalDays = days;
    notifyListeners();
  }

  void setMinXChart() {
    minX = historyIntervalUseCase.getMinXChartUsecase(listPricesChart, intervalDays);
    notifyListeners();
  }

  void setMinYChart() {
    minY = historyIntervalUseCase.getMinYChartUsecase(listPricesChart, intervalDays);
    notifyListeners();
  }

  int getIntervalDays(){
    return intervalDays;
  }
}
