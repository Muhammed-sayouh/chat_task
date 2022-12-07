import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import '../theme/style/colors.dart';
import '../theme/style/font_style.dart';

class TopHomeWidget extends StatelessWidget {
  /// Contains a profile picture and Pinned Chat text
  const TopHomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Constants.pinnedChats,
          style: bigBlackFont()
              .copyWith(color: AppColors.darkBlue, fontWeight: FontWeight.w600),
        ),
        Image.asset(Constants.logoImage)
      ],
    );
  }
}
