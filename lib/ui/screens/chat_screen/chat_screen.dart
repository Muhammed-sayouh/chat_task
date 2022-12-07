import 'package:flutter/material.dart';
import 'package:task/ui/theme/sizes/sizes.dart';
import 'package:task/ui/theme/style/colors.dart';

import '../../../models/chat_model.dart';
import '../../custom_widgets/chat_list_widget.dart';
import '../../custom_widgets/hash_widget.dart';
import '../../custom_widgets/persons_count_typing.dart';
import '../../custom_widgets/top_chat_widget.dart';
import '../../custom_widgets/type_widge.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkWhite,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: height(context, 0.02),
            ),
            Padding(
              padding: commonPaddingHorizental(context),
              child: const TopChatWidge(),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: conversation.length + 1,
                itemBuilder: (context, index) {
                  if (index == conversation.length) {
                    return const NumbersOfPersonAreTypingWidget();
                  } else {
                    return ChatListWidget(
                      index: index,
                    );
                  }
                },
              ),
            ),
            SizedBox(
              height: height(context, 0.015),
            ),
            const HashWidget(),
            Container(color: Colors.grey[300], height: 1),
            const TypeWidget(),
          ],
        ),
      ),
    );
  }
}

