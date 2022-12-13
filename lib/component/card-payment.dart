import 'package:dashboardweb/config/responsive.dart';
import 'package:dashboardweb/config/size_config.dart';
import 'package:dashboardweb/style/colors.dart';
import 'package:dashboardweb/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardPaymentList extends StatelessWidget {
  final String icon;
  final String title;
  final String price;
  const CardPaymentList(
      {Key? key, required this.icon, required this.price, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(minWidth: Responsive.isDesktop(context) ? 200 : 130),
      padding: EdgeInsets.fromLTRB(
          20, 20, Responsive.isDesktop(context) ? 40 : 20, 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            icon,
            width: 35,
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 2,
          ),
          PrimaryText(
              text: title,
              color: AppColors.secondary,
              fontWeight: FontWeight.w800,
              height: 0,
              size: 16),
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 2,
          ),
          PrimaryText(
              text: price,
              color: AppColors.black,
              fontWeight: FontWeight.w800,
              height: 0,
              size: 16),
        ],
      ),
    );
  }
}
