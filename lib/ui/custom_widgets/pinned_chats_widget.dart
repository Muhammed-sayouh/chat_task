import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/ui/screens/chat_screen/chat_screen.dart';

import '../../models/pinned_chats_model.dart';
import '../theme/sizes/sizes.dart';
import '../theme/style/colors.dart';
import '../theme/style/font_style.dart';
import 'profile_image_widget_pinned_chats.dart';

class PinnedChatWidget extends StatelessWidget {
  /// contain Pinned Chat items , user image and last message
  const PinnedChatWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context, 0.35),
      width: width(context, 1),
      child: GridView.builder(
        itemCount: pinnedChats.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 0.7,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const ChatScreen(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(width(context, 0.04)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: pinnedChats[index].newMessage
                    ? AppColors.lightBlue
                    : AppColors.darkWhite,
              ),
              child: Column(children: [
                pinnedChats[index].newMessage
                    ? Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          backgroundColor: AppColors.mainBlue,
                          radius: width(context, 0.015),
                        ),
                      )
                    : SizedBox(
                        width: width(context, 0.015),
                        height: width(context, 0.03),
                      ),
                Row(
                  children: [
                    CircleImageWidget(
                      image: pinnedChats[index].image,
                    ),
                    SizedBox(
                      width: width(context, 0.03),
                    ),
                    SizedBox(
                      width: width(context, 0.23),
                      child: Text(
                        pinnedChats[index].name,
                        style: mediumBlackFont().copyWith(
                          color: AppColors.darkBlue,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height(context, 0.02),
                ),
                Row(
                  children: [
                    pinnedChats[index].isSent
                        ? const Icon(
                            CupertinoIcons.arrowshape_turn_up_left_fill,
                            color: AppColors.lightGray,
                            size: 12,
                          )
                        : const SizedBox(),
                    const SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: width(context, 0.3),
                      child: Text(
                        pinnedChats[index].title,
                        style: smallBlackFont()
                            .copyWith(color: AppColors.textSecondryColor),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    )
                  ],
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
