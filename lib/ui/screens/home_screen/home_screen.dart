import 'package:flutter/material.dart';
import 'package:task/helpers/constants.dart';
import 'package:task/ui/theme/sizes/sizes.dart';

import '../../custom_widgets/pinned_chats_widget.dart';
import '../../custom_widgets/recent_chat_widget_home_screen.dart';
import '../../custom_widgets/top_home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: commonPaddingHorizental(context),
            child: Column(
              children: [
                SizedBox(
                  height: height(context, 0.07),
                ),
                const TopHomeWidget(),
                const PinnedChatWidget(),
              ],
            ),
          ),
          const RecentChatWidget(),
        ],
      ),
      floatingActionButton: Image.asset(Constants.floatingButton),
    );
  }
}
