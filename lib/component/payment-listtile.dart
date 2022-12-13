import 'package:dashboardweb/style/colors.dart';
import 'package:dashboardweb/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentListTile extends StatelessWidget {
  final String? picture;
  final String? title;
  final String? amount;
  const PaymentListTile(
      {Key? key,
      required this.amount,
      required this.picture,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0, right: 20),
      visualDensity: VisualDensity.standard,
      leading: Container(
        width: 50,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(20)),
        child: SvgPicture.asset(
          picture!,
          width: 20,
        ),
      ),
      title: PrimaryText(
          text: title!,
          color: AppColors.black,
          fontWeight: FontWeight.w600,
          height: 0,
          size: 14),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryText(
              text: 'Successfully',
              color: AppColors.secondary,
              fontWeight: FontWeight.w500,
              height: 0,
              size: 12),
          PrimaryText(
              text: amount!,
              color: AppColors.black,
              fontWeight: FontWeight.w600,
              height: 0,
              size: 12),
        ],
      ),
    );
  }
}
