import 'package:flutter/material.dart';

import '../../models/chat_categoris_model.dart';
import '../../view_model/home_view_model.dart';
import '../theme/sizes/sizes.dart';
import '../theme/style/colors.dart';
import '../theme/style/font_style.dart';

class ChatCategorisWidget extends StatelessWidget {
  const ChatCategorisWidget({
    Key? key,
    required this.provider,
  }) : super(key: key);

  final HomeViewModel provider;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context, 0.04),
      child: ListView.builder(
        
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: chatCategris.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(
            right: width(
              context,
              0.07,
            ),
          ),
          child: InkWell(
            onTap: () {
           provider.currentIndex =index;
              provider.changeState();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  color:provider.toggel(index)? AppColors.mainBlue:Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  chatCategris[index].title,
                  style: smallBlackFont().copyWith(color:provider.toggel(index)? Colors.white:AppColors.lightGray),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
