import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/ui/custom_widgets/top_recent_chat.dart';
import 'package:task/ui/screens/chat_screen/chat_screen.dart';
import 'package:task/view_model/home_view_model.dart';

import '../theme/sizes/sizes.dart';
import 'chat_categoris_widget.dart';
import 'expanded_indecator.dart';
import 'recent_chat_list_widget.dart';

class RecentChatWidget extends StatelessWidget {
  ///  contains chats categoris like presonal and work ...etc
  const RecentChatWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.5,
      maxChildSize: 0.96,
      builder: (BuildContext context, ScrollController scrollController) {
        final provider = Provider.of<HomeViewModel>(context);
        return SingleChildScrollView(
          controller: scrollController,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const ChatScreen(),
                ),
              );
            },
            child: Container(
              padding: commonPaddingHorizental(context),
              height: height(context, 0.9),
              width: width(context, 1),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.grey[50],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height(context, 0.01),
                  ),
                  const ExpandEndecator(),
                  const BigPadding(),
                  const TopRecentWidget(),
                  const BigPadding(),
                  ChatCategorisWidget(provider: provider),
                  SizedBox(
                    height: height(context, 0.025),
                  ),
                  const RecentChatListsWidget(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
