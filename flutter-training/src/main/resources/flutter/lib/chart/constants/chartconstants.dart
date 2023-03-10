import 'package:d_chart/d_chart.dart';

Map<String, double> map = {
  "Test1": 35.0,
  "Test2": 15.0,
  "Test3": 20.0,
  "Test4": 30.0
};
List ranking = [
  {'class': 'A', 'total': 23},
  {'class': 'B', 'total': 14},
  {'class': 'C', 'total': 8},
  {'class': 'D', 'total': 7},
  {'class': 'E', 'total': 21},
];

final group1 = [
  DChartScatterData(
    domain: 1,
    measure: 23,
    size: 10,
    startPlot: DPlot(2, 10),
    type: SymbolType.rect,
  ),
  DChartScatterData(
    domain: 2,
    measure: 12,
    type: SymbolType.circle,
  ),
  DChartScatterData(domain: 3, measure: 19),
];
final group2 = [
  DChartScatterData(
    domain: 1,
    measure: 15,
    type: SymbolType.triangle,
  ),
  DChartScatterData(
      domain: 3, measure: 25, type: SymbolType.triangle, size: 15),
  DChartScatterData(domain: 5, measure: 7),
];

//constants
