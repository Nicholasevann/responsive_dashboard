import 'package:dashboardweb/config/responsive.dart';
import 'package:dashboardweb/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarChartComponent extends StatelessWidget {
  const BarChartComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
          borderData: FlBorderData(show: false),
          barTouchData: BarTouchData(
              enabled: true,
              touchTooltipData: BarTouchTooltipData(
                tooltipBgColor: AppColors.white,
              )),
          alignment: BarChartAlignment.spaceBetween,
          axisTitleData:
              FlAxisTitleData(leftTitle: AxisTitle(reservedSize: 20)),
          gridData:
              FlGridData(drawHorizontalLine: true, horizontalInterval: 30),
          titlesData: FlTitlesData(
              leftTitles: SideTitles(
                  reservedSize: 30,
                  showTitles: true,
                  getTextStyles: (context, value) =>
                      const TextStyle(color: Colors.grey, fontSize: 12),
                  getTitles: (value) {
                    if (value == 0) {
                      return '0';
                    } else if (value == 30) {
                      return '30';
                    } else if (value == 60) {
                      return '60';
                    } else if (value == 90) {
                      return '90';
                    }
                    return '';
                  }),
              bottomTitles: SideTitles(
                  showTitles: true,
                  getTextStyles: (context, value) =>
                      TextStyle(color: Colors.grey, fontSize: 12),
                  getTitles: (val) {
                    if (val == 0) {
                      return 'JAN';
                    } else if (val == 1) {
                      return 'FEB';
                    } else if (val == 2) {
                      return 'MAR';
                    } else if (val == 3) {
                      return 'APR';
                    } else if (val == 4) {
                      return 'MAY';
                    } else if (val == 5) {
                      return 'JUN';
                    } else if (val == 6) {
                      return 'JUL';
                    } else if (val == 7) {
                      return 'AUG';
                    } else if (val == 8) {
                      return 'SEP';
                    } else if (val == 9) {
                      return 'OKT';
                    } else if (val == 10) {
                      return 'NOV';
                    } else if (val == 11) {
                      return 'DEC';
                    }
                    return '';
                  })),
          barGroups: [
            BarChartGroupData(x: 0, barRods: [
              BarChartRodData(
                  y: 10,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg])),
            ]),
            BarChartGroupData(x: 1, barRods: [
              BarChartRodData(
                  y: 30,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg])),
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(
                  y: 40,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg])),
            ]),
            BarChartGroupData(x: 3, barRods: [
              BarChartRodData(
                  y: 20,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg])),
            ]),
            BarChartGroupData(x: 4, barRods: [
              BarChartRodData(
                  y: 80,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg])),
            ]),
            BarChartGroupData(x: 5, barRods: [
              BarChartRodData(
                  y: 10,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg])),
            ]),
            BarChartGroupData(x: 6, barRods: [
              BarChartRodData(
                  y: 70,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg])),
            ]),
            BarChartGroupData(x: 7, barRods: [
              BarChartRodData(
                  y: 10,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg])),
            ]),
            BarChartGroupData(x: 8, barRods: [
              BarChartRodData(
                  y: 50,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg])),
            ]),
            BarChartGroupData(x: 9, barRods: [
              BarChartRodData(
                  y: 60,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg])),
            ]),
            BarChartGroupData(x: 10, barRods: [
              BarChartRodData(
                  y: 90,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg])),
            ]),
            BarChartGroupData(x: 11, barRods: [
              BarChartRodData(
                  y: 10,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg])),
            ]),
          ]),
      swapAnimationDuration: Duration(microseconds: 150),
      swapAnimationCurve: Curves.linear,
    );
  }
}
