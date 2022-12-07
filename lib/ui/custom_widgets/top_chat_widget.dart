import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/sizes/sizes.dart';
import '../theme/style/colors.dart';
import '../theme/style/font_style.dart';

class TopChatWidge extends StatelessWidget {
  // contain image title and members ... etc
  const TopChatWidge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.arrow_back,
          size: 30,
          color: AppColors.darkGray,
        ),
        const SmallPadding(
          horizental: true,
        ),
        const CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(
              "https://img.freepik.com/free-photo/top-view-delicious-fruit-salad-inside-plate-with-fresh-fruits-dark-tropical-fruit-tree-exotic-ripe-diet-photo_140725-109944.jpg?w=2000"),
        ),
        const BigPadding(
          horizental: true,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Fullsnack Designers",
              style:
                  bigBlackFont().copyWith(color: AppColors.darkBlue),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              "7 Online, from 12 peoples",
              style: smallBlackFont()
                  .copyWith(color: AppColors.darkGray),
            )
          ],
        ),
        SizedBox(
          width: width(context, 0.05),
        ),
        const Icon(
          CupertinoIcons.video_camera_solid,
          color: AppColors.darkGray,
          size: 30,
        ),
        SizedBox(
          width: width(context, 0.02),
        ),
        const Icon(
          CupertinoIcons.ellipsis_vertical,
          color: AppColors.darkGray,
          size: 24,
        )
      ],
    );
  }
}
