import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WorkoutBarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        maxY: 9,
        barTouchData: BarTouchData(enabled: false),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              // Add some space here so the labels aren't clipped
              reservedSize: 40, // space to draw text
              getTitlesWidget: (double value, TitleMeta meta) {
                const style = TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                );
                switch (value.toInt()) {
                  case 0:
                    return Text('01 Jan', style: style);
                  case 1:
                    return Text('02 Jan', style: style);
                  case 2:
                    return Text('03 Jan', style: style);
                  case 3:
                    return Text('04 Jan', style: style);
                  case 4:
                    return Text('05 Jan', style: style);
                  case 5:
                    return Text('06 Jan', style: style);
                  default:
                    return Text('', style: style);
                }
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              // Reserve enough width to show the y-axis labels
              reservedSize: 40,
              getTitlesWidget: (double value, TitleMeta meta) {
                const style = TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                );
                switch (value.toInt()) {
                  case 0:
                    return Text('0 hrs', style: style);
                  case 3:
                    return Text('3 hrs', style: style);
                  case 6:
                    return Text('6 hrs', style: style);
                  case 9:
                    return Text('9 hrs', style: style);
                  default:
                    return Text('', style: style);
                }
              },
            ),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: Colors.grey.withAlpha(34),
              strokeWidth: 1,
            );
          },
        ),
        borderData: FlBorderData(show: false),
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                toY: 5,
                color: Colors.blue,
                width: 10,
              ),
            ],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                toY: 6,
                color: Colors.blue,
                width: 10,
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 7,
                color: Colors.blue,
                width: 10,
              ),
            ],
          ),
          BarChartGroupData(
            x: 3,
            barRods: [
              BarChartRodData(
                toY: 8,
                color: Colors.blue,
                width: 10,
              ),
            ],
          ),
          BarChartGroupData(
            x: 4,
            barRods: [
              BarChartRodData(
                toY: 3,
                color: Colors.blue,
                width: 10,
              ),
            ],
          ),
          BarChartGroupData(
            x: 5,
            barRods: [
              BarChartRodData(
                toY: 4,
                color: Colors.blue,
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
