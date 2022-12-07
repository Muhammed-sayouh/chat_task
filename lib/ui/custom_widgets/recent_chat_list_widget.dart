import 'package:flutter/material.dart';
import 'package:task/ui/custom_widgets/profile_image_widget_pinned_chats.dart';

import '../../models/pinned_chats_model.dart';
import '../theme/sizes/sizes.dart';
import '../theme/style/colors.dart';
import '../theme/style/font_style.dart';

class RecentChatListsWidget extends StatelessWidget {
  const RecentChatListsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: pinnedChats.length,
        padding: const EdgeInsets.symmetric(vertical: 5),
        itemBuilder: (context, index) => Container
        (
        padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(bottom: 8),
          width: width(context, 1),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
              color: pinnedChats[index].newMessage
                  ? AppColors.lightBlue
                  : Colors.transparent),
          child: Row(
            children: [
              CircleImageWidgetBig(image: pinnedChats[index].image),
              const MediumPadding(
                horizental: true,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    pinnedChats[index].name,
                    style: smallBlackFont().copyWith(
                        color: AppColors.darkBlue,
                        fontWeight: FontWeight.bold),
                  ),
                  const MediumPadding(),
                  Text(
                    pinnedChats[index].title,
                    style: smallBlackFont()
                        .copyWith(color: AppColors.lightGray),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    pinnedChats[index].time,
                    style: smallBlackFont()
                        .copyWith(color: AppColors.lightGray),
                  ),
                  pinnedChats[index].newMessage
                      ? const SmallPadding()
                      : const SizedBox(),
                  pinnedChats[index].newMessage
                      ? CircleAvatar(
                          radius: 12,
                          backgroundColor: AppColors.mainBlue,
                          child: Text(
                            "5",
                            style: smallBlackFont().copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
