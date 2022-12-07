import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/sizes/sizes.dart';
import '../theme/style/colors.dart';
import '../theme/style/font_style.dart';

class HashWidget extends StatelessWidget {
  const HashWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: commonPaddingHorizental(context),
      color: Colors.white,
      width: width(context, 1),
      height: height(context, 0.06),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "# General",
          style: smallBlackFont()
              .copyWith(color: AppColors.mainBlue, fontWeight: FontWeight.bold),
        ),
        Row(
          children: const[
             Icon(
              Icons.keyboard_arrow_up_outlined,
              color: AppColors.mainBlue,
            ),
             Icon(
              CupertinoIcons.ellipsis_vertical,
              color: AppColors.mainBlue,
            ),
          ],
        ),
      ]),
    );
  }
}
