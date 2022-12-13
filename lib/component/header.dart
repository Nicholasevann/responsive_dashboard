import 'package:dashboardweb/config/responsive.dart';
import 'package:dashboardweb/style/colors.dart';
import 'package:dashboardweb/style/style.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(
                  text: 'Dashboard',
                  color: AppColors.black,
                  fontWeight: FontWeight.w800,
                  height: 0,
                  size: 30),
              PrimaryText(
                  text: 'Payment updates',
                  color: AppColors.iconGray,
                  fontWeight: FontWeight.w400,
                  height: 0,
                  size: 14)
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Expanded(
            flex: Responsive.isDesktop(context) ? 1 : 2,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.white,
                  contentPadding: EdgeInsets.only(left: 40, right: 5),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: AppColors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: AppColors.white)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.black,
                  ),
                  hintText: 'Search',
                  hintStyle:
                      TextStyle(color: AppColors.secondary, fontSize: 14)),
            ))
      ],
    );
  }
}
