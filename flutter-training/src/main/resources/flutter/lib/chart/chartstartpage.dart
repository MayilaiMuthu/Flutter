import 'dart:math';

import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:training_flutter/chart/constants/chartconstants.dart';

class MyHome extends StatefulWidget {
  final String title;
  const MyHome({super.key, required this.title});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          const Divider(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.pink,
              child: PieChart(
                  dataMap: map,
                  chartType: ChartType.ring,
                  legendOptions: const LegendOptions(
                      legendPosition: LegendPosition.bottom)),
            ),
          ),
          const Divider(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.pink,
              child: DChartBar(
                data: const [
                  {
                    'id': 'Bar',
                    'data': [
                      {'domain': '2020', 'measure': 3},
                      {'domain': '2021', 'measure': 4},
                      {'domain': '2022', 'measure': 6},
                      {'domain': '2023', 'measure': 0.3},
                    ],
                  },
                ],
                domainLabelPaddingToAxisLine: 16,
                axisLineTick: 2,
                axisLinePointTick: 2,
                axisLinePointWidth: 10,
                axisLineColor: Colors.green,
                measureLabelPaddingToAxisLine: 16,
                barColor: (barData, index, id) => Colors.green,
                showBarValue: true,
              ),
            ),
          ),
          const Divider(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.pink,
              child: DChartLine(
                data: const [
                  {
                    'id': 'Line',
                    'data': [
                      {'domain': 0, 'measure': 4.1},
                      {'domain': 2, 'measure': 4},
                      {'domain': 3, 'measure': 6},
                      {'domain': 4, 'measure': 1},
                    ],
                  },
                ],
                lineColor: (lineData, index, id) => Colors.amber,
              ),
            ),
          ),
          const Divider(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.pink,
              child: DChartPie(
                data: const [
                  {'domain': 'Flutter', 'measure': 28},
                  {'domain': 'React Native', 'measure': 27},
                  {'domain': 'Ionic', 'measure': 20},
                  {'domain': 'Cordova', 'measure': 15},
                ],
                fillColor: (pieData, index) => Colors.purple,
              ),
            ),
          ),
          const Divider(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.pink,
              child: DChartPie(
                data: const [
                  {'domain': 'Flutter', 'measure': 28},
                  {'domain': 'React Native', 'measure': 27},
                  {'domain': 'Ionic', 'measure': 20},
                  {'domain': 'Cordova', 'measure': 15},
                ],
                fillColor: (pieData, index) => Colors.purple,
                donutWidth: 30,
                labelColor: Colors.white,
              ),
            ),
          ),
          const Divider(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.pink,
              child: DChartGauge(
                data: const [
                  {'domain': 'Off', 'measure': 30},
                  {'domain': 'Warm', 'measure': 30},
                  {'domain': 'Hot', 'measure': 30},
                ],
                fillColor: (pieData, index) {
                  switch (pieData['domain']) {
                    case 'Off':
                      return Colors.green;
                    case 'Warm':
                      return Colors.orange;
                    default:
                      return Colors.red;
                  }
                },
                showLabelLine: false,
                pieLabel: (pieData, index) {
                  return "${pieData['domain']}";
                },
                labelPosition: PieLabelPosition.inside,
                labelPadding: 0,
                labelColor: Colors.white,
              ),
            ),
          ),
          const Divider(
            height: 20,
          ),
          const Divider(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.pink,
              child: DChartBarCustom(
                showDomainLine: true,
                showMeasureLine: true,
                showDomainLabel: true,
                showMeasureLabel: true,
                spaceBetweenItem: 8,
                listData: [
                  DChartBarDataCustom(
                    value: 13,
                    label: 'Jan',
                    color: Colors.blue,
                  ),
                  DChartBarDataCustom(value: 20, label: 'Feb'),
                  DChartBarDataCustom(value: 30, label: 'Mar'),
                  DChartBarDataCustom(value: 40, label: 'Apr'),
                  DChartBarDataCustom(value: 25, label: 'Mei'),
                ],
              ),
            ),
          ),
          const Divider(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.pink,
              child: DChartBarCustom(
                loadingDuration: const Duration(milliseconds: 1500),
                showLoading: true,
                valueAlign: Alignment.topCenter,
                showDomainLine: true,
                showDomainLabel: true,
                showMeasureLine: true,
                showMeasureLabel: true,
                spaceDomainLabeltoChart: 10,
                spaceMeasureLabeltoChart: 5,
                spaceDomainLinetoChart: 15,
                spaceMeasureLinetoChart: 20,
                spaceBetweenItem: 16,
                radiusBar: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                measureLabelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.purple,
                ),
                domainLabelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.purple,
                ),
                measureLineStyle:
                    const BorderSide(color: Colors.amber, width: 2),
                domainLineStyle: const BorderSide(color: Colors.red, width: 2),
                max: 25,
                listData: List.generate(ranking.length, (index) {
                  Color currentColor =
                      Color((Random().nextDouble() * 0xFFFFFF).toInt());
                  return DChartBarDataCustom(
                    onTap: () {
                      print(
                        '${ranking[index]['class']} => ${ranking[index]['total']}',
                      );
                    },
                    elevation: 8,
                    value: ranking[index]['total'].toDouble(),
                    label: ranking[index]['class'],
                    color: currentColor.withOpacity(1),
                    splashColor: Colors.blue,
                    showValue: ranking[index]['class'] == 'C' ? false : true,
                    valueStyle: ranking[index]['class'] == 'A'
                        ? const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          )
                        : const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                    labelCustom: ranking[index]['class'] == 'B'
                        ? Transform.rotate(
                            angle: 5.5,
                            child: const Text('Bags'),
                          )
                        : null,
                    valueCustom: ranking[index]['total'] > 20
                        ? Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 2),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Text(
                                    '${ranking[index]['total']}',
                                    style: const TextStyle(
                                      fontSize: 11,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                                const Text(
                                  '😄',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          )
                        : null,
                    valueTooltip: '${ranking[index]['total']} Student',
                  );
                }),
              ),
            ),
          ),
          const Divider(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.pink,
              child: DChartTime(
                chartRender: DRenderLine(),
                measureLabel: (value) => '${value}k',
                // domainLabel: (dateTime) {
                //   // [DateFormat] from intl package
                //   return DateFormat('d MMM yy').format(dateTime!);
                // },
                groupData: [
                  DChartTimeGroup(
                    id: 'Keyboard',
                    color: Colors.blue,
                    data: [
                      DChartTimeData(time: DateTime(2023, 2, 1), value: 29),
                      DChartTimeData(time: DateTime(2023, 2, 2), value: 73),
                      DChartTimeData(time: DateTime(2023, 2, 4), value: 23),
                      DChartTimeData(time: DateTime(2023, 2, 8), value: 56),
                      DChartTimeData(time: DateTime(2023, 2, 9), value: 32),
                      DChartTimeData(time: DateTime(2023, 2, 10), value: 21),
                      DChartTimeData(time: DateTime(2023, 2, 12), value: 76),
                      DChartTimeData(time: DateTime(2023, 2, 18), value: 91),
                      DChartTimeData(time: DateTime(2023, 2, 20), value: 17),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.pink,
              child: DChartScatter(
                trackType: TrackType.rectangle,
                borderWidth: (group, data, index) => 2,
                borderColor: (random, group, data) =>
                    Colors.red.withOpacity(0.8),
                groupData: [
                  DChartScatterGroup(
                    id: 'id',
                    data: group1,
                    color: Colors.amber,
                  ),
                  DChartScatterGroup(
                    id: 'id2',
                    data: group2,
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.pink,
              child: const DChartSingleBar(
                forgroundColor: Colors.green,
                value: 30,
                max: 80,
              ),
            ),
          ),
          const Divider(
            height: 20,
          ),
        ],
      ),
    );
  }
}
