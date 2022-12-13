import 'package:dashboardweb/component/payment-listtile.dart';
import 'package:dashboardweb/config/size_config.dart';
import 'package:dashboardweb/data.dart';
import 'package:dashboardweb/style/colors.dart';
import 'package:dashboardweb/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentCardDetail extends StatelessWidget {
  const PaymentCardDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: AppColors.iconGray,
                    blurRadius: 15,
                    offset: Offset(10, 15))
              ]),
          child: Image.asset('assets/card.png'),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
                text: 'Recent Activity',
                color: AppColors.black,
                fontWeight: FontWeight.w800,
                height: 0,
                size: 18),
            PrimaryText(
                text: '11 Oktober 2022',
                color: AppColors.iconGray,
                fontWeight: FontWeight.w400,
                height: 0,
                size: 14)
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        Column(
          children: List.generate(
              recentActivities.length,
              (index) => PaymentListTile(
                    picture: recentActivities[index]['icon'],
                    title: recentActivities[index]['label'],
                    amount: recentActivities[index]['amount'],
                  )),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
                text: 'Upcoming Payment',
                color: AppColors.black,
                fontWeight: FontWeight.w800,
                height: 0,
                size: 18),
            PrimaryText(
                text: '11 Oktober 2022',
                color: AppColors.iconGray,
                fontWeight: FontWeight.w400,
                height: 0,
                size: 14)
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        Column(
          children: List.generate(
              upcomingPayments.length,
              (index) => PaymentListTile(
                    picture: upcomingPayments[index]['icon'],
                    title: upcomingPayments[index]['label'],
                    amount: upcomingPayments[index]['amount'],
                  )),
        ),
      ],
    );
  }
}
