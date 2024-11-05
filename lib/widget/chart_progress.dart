
import 'package:fitness_ui/theme/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<Color> gradientColors = [primary];

LineChartData workoutProgressData() {
  return LineChartData(
    gridData: FlGridData(
      getDrawingVerticalLine: (value) {
        return FlLine(
          color: Colors.transparent,
          strokeWidth: 0.1,
        );
      },
      getDrawingHorizontalLine: (value) {
        return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 0.1,
        );
      },
    ),
    titlesData: FlTitlesData(
      topTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTitlesWidget: (value, meta) {
            switch (value.toInt()) {
              case 1:
                return Text('Mon', style: TextStyle(fontSize: 10));
              case 3:
                return Text('Tue', style: TextStyle(fontSize: 10));
              case 5:
                return Text('Wed', style: TextStyle(fontSize: 10));
              case 7:
                return Text('Thu', style: TextStyle(fontSize: 10));
              case 9:
                return Text('Fri', style: TextStyle(fontSize: 10));
              case 11:
                return Text('Sat', style: TextStyle(fontSize: 10));
            }
            return const SizedBox();
          },
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: false,
          reservedSize: 28,
        ),
      ),
      rightTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          getTitlesWidget: (value, meta) {
            switch (value.toInt()) {
              case 1:
                return Text('0%', style: TextStyle(fontSize: 10));
              case 2:
                return Text('20%', style: TextStyle(fontSize: 10));
              case 3:
                return Text('60%', style: TextStyle(fontSize: 10));
              case 4:
                return Text('80%', style: TextStyle(fontSize: 10));
              case 5:
                return Text('100%', style: TextStyle(fontSize: 10));
            }
            return const SizedBox();
          },
          reservedSize: 28,
        ),
      ),
    ),
    borderData: FlBorderData(
      show: false,
    ),
    minX: 0,
    maxX: 11,
    minY: 0,
    maxY: 6,
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0, 3),
          FlSpot(2.6, 2),
          FlSpot(4.9, 5),
          FlSpot(6.8, 3.1),
          FlSpot(8, 4),
          FlSpot(9.5, 3),
          FlSpot(11, 4),
        ],
        isCurved: true,
        color: gradientColors.first, // Changed to 'color'
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, 1.5),
          FlSpot(2.5, 1),
          FlSpot(3, 5),
          FlSpot(5, 2),
          FlSpot(7, 4),
          FlSpot(8, 3),
          FlSpot(11, 4),
        ],
        isCurved: true,
        color: thirdColor.withOpacity(0.5), // Changed to 'color'
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
      ),
    ],
  );
}
