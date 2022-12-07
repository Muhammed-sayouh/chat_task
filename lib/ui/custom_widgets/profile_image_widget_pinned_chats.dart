import 'package:flutter/material.dart';

import '../theme/sizes/sizes.dart';
import '../theme/style/colors.dart';

class CircleImageWidget extends StatelessWidget {
  final String image;
  const CircleImageWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context, 0.1),
      height: width(context, 0.1),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: [
          SizedBox(
            width: width(context, 06),
            height: width(context, 06),
            child: Image.asset(
              image,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height(
                  context,
                  0.023,
                ),
                left: width(context, 0.06)),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1.5),
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundColor: AppColors.green,
                  radius: width(context, 0.011),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class CircleImageWidgetBig extends StatelessWidget {
  final String image;
  const CircleImageWidgetBig({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context, 0.16),
      height: width(context, 0.16),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: [
          SizedBox(
            width: width(context, 08),
            height: width(context, 08),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height(
                  context,
                  0.045,
                ),
                left: width(context, 0.08)),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundColor: AppColors.green,
                  radius: width(context, 0.013),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
