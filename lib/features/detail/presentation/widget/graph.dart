import 'package:finance_mobile/core/constans/colors.dart';
import 'package:finance_mobile/core/util/radius.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineCharts extends StatelessWidget {
  const LineCharts({required this.isShowingMainData});

  final bool isShowingMainData;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      sampleData2,
      swapAnimationDuration: const Duration(milliseconds: 250),
    );
  }

  LineChartData get sampleData2 => LineChartData(
        lineTouchData: lineTouchData2,
        gridData: gridData,
        titlesData: titlesData2,
        lineBarsData: lineBarsData2,
        borderData: borderData,
        minX: 0,
        maxX: 14,
        maxY: 7,
        minY: 0,
      );
  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: Colors.transparent),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );

  LineTouchData get lineTouchData2 => LineTouchData(
        enabled: false,
      );

  FlTitlesData get titlesData2 => FlTitlesData(
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
          axisNameSize: 55,
          drawBehindEverything: true,
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  List<LineChartBarData> get lineBarsData2 => [
        lineChartBarData2_2,
      ];

  FlGridData get gridData => FlGridData(show: false);
  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff9B9B9B),
      fontWeight: FontWeight.w500,
      fontSize: 14,
    );
    Widget text;
    switch (value.toInt()) {
      case 3:
        text = const Text('10', style: style);
        break;
      case 6:
        text = const Text('11', style: style);
        break;
      case 9:
        text = Container(
            height: 55,
            width: 55,
            alignment: Alignment.center,
            // padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
            decoration: BoxDecoration(
                color: secondaryOrange, borderRadius: customRadius(8)),
            child: Text('12', style: style.copyWith(color: primaryOrange)));
        break;
      case 12:
        text = const Text('13', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  LineChartBarData get lineChartBarData2_2 => LineChartBarData(
        isCurved: true,
        color: primaryOrange,
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(
          show: true,
          // color: primaryOrange.withOpacity(0.2),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffFF7955).withOpacity(0.2),
                Color(0xffFF795500).withOpacity(0),
              ]),
        ),
        spots: const [
          FlSpot(1, 2),
          FlSpot(2.5, 1.5),
          FlSpot(4.5, 5),
          FlSpot(8, 3.5),
          FlSpot(10, 5.9),
          FlSpot(12, 4.5),
          FlSpot(13, 5),
        ],
      );
}
