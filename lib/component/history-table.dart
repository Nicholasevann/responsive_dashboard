import 'package:dashboardweb/config/responsive.dart';
import 'package:dashboardweb/config/size_config.dart';
import 'package:dashboardweb/data.dart';
import 'package:dashboardweb/style/colors.dart';
import 'package:dashboardweb/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class HistoryTable extends StatelessWidget {
  const HistoryTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection:
          Responsive.isDesktop(context) ? Axis.vertical : Axis.horizontal,
      child: SizedBox(
        width: Responsive.isDesktop(context)
            ? double.infinity
            : SizeConfig.screenWidth,
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(
              transactionHistory.length,
              (index) => TableRow(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding:
                              EdgeInsets.only(top: 10, bottom: 10, left: 20),
                          child: CircleAvatar(
                            radius: 17,
                            backgroundImage: NetworkImage(
                                transactionHistory[index]['avatar']!),
                          ),
                        ),
                        PrimaryText(
                            text: transactionHistory[index]['label']!,
                            color: AppColors.secondary,
                            fontWeight: FontWeight.w800,
                            height: 0,
                            size: 16),
                        PrimaryText(
                            text: transactionHistory[index]['time']!,
                            color: AppColors.secondary,
                            fontWeight: FontWeight.w800,
                            height: 0,
                            size: 16),
                        PrimaryText(
                            text: transactionHistory[index]['amount']!,
                            color: AppColors.secondary,
                            fontWeight: FontWeight.w800,
                            height: 0,
                            size: 16),
                        PrimaryText(
                            text: transactionHistory[index]['status']!,
                            color: AppColors.secondary,
                            fontWeight: FontWeight.w800,
                            height: 0,
                            size: 16),
                      ])),
        ),
      ),
    );
  }
}
