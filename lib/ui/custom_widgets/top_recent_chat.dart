import 'package:flutter/cupertino.dart';

import '../../helpers/constants.dart';
import '../theme/style/colors.dart';
import '../theme/style/font_style.dart';

class TopRecentWidget extends StatelessWidget {
  /// Contains a profile picture and Pinned Chat text
  const TopRecentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Constants.recentChats,
          style: bigBlackFont()
              .copyWith(color: AppColors.darkBlue, fontWeight: FontWeight.w600),
        ),
        const Icon(CupertinoIcons.search,color: AppColors.darkGray,)
      ],
    );
  }
}
