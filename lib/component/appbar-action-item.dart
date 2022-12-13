import 'package:dashboardweb/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarActionItem extends StatelessWidget {
  const AppBarActionItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/calendar.svg',
              width: 20,
            )),
        SizedBox(
          width: 10,
        ),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/ring.svg',
              width: 20,
            )),
        SizedBox(
          width: 15,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage(
                  "https://thumbs.dreamstime.com/b/flat-male-avatar-image-beard-hairstyle-businessman-profile-icon-vector-179285629.jpg"),
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
              color: AppColors.black,
            )
          ],
        )
      ],
    );
  }
}
