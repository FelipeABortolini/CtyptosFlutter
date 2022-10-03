import 'package:fl_chart/fl_chart.dart';

class HistoryIntervalRepository {

  List<FlSpot> pricesListToListFlSpotRepository(List<List> history, int days){
    List<FlSpot> points = [];
    var index = 0;
    for (var element in history) {
      points.add(FlSpot(element[1].toDouble(), element[0].toDouble()));
      if(index >= days-1) break;
      index++;
    }
    return points;
  }

  double getMinXChartRepository(List<List> history, int days){
    var index = 0;
    double minX = history[0][1].toDouble();
    for (var element in history) {
      if(element[1].toDouble() < minX) minX = element[1].toDouble();
      if(index >= days-1) break;
      index++;
    }
    return minX;
  }

  double getMinYChartRepository(List<List> history, int days){
    var index = 0;
    double minY = history[0][0].toDouble();
    for (var element in history) {
      if(element[0].toDouble() < minY) minY = element[0].toDouble();
      if(index >= days-1) break;
      index++;
    }
    minY -= minY * 0.01;
    return minY;
  }
}
