import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import '../theme/sizes/sizes.dart';
import '../theme/style/colors.dart';
import '../theme/style/font_style.dart';

class NumbersOfPersonAreTypingWidget extends StatelessWidget {
  const NumbersOfPersonAreTypingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Constants.loaderImage),
        SizedBox(
          width: width(context, 0.12),
          child: Stack(
            children: const [
              CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage(Constants.personImage),
              ),
              Positioned(
                left: 10,
                child: CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage(Constants.personImage1),
                ),
              ),
              Positioned(
                left: 20,
                child: CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage(Constants.personImage2),
                ),
              ),
            ],
          ),
        ),
        Text(
          "+2 others are typing",
          style: smallBlackFont().copyWith(color: AppColors.lightGray),
        )
      ],
    );
  }
}
