import 'package:flutter/material.dart';

import '../theme/sizes/sizes.dart';
import '../theme/style/colors.dart';

class TypeWidget extends StatelessWidget {
  const TypeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: commonPaddingHorizental(context),
      color: Colors.white,
      child: Row(
        children: [
          const Icon(Icons.emoji_emotions_outlined,color: AppColors.darkGray,),
          const SmallPadding(horizental: true,),
          Expanded(child: TextFormField(

            decoration: const InputDecoration( border: InputBorder.none,hintText: "Write a message..."),
          )),
          const Icon(Icons.attach_file,color:  AppColors.darkGray,),
          const CircleAvatar(backgroundColor: AppColors.mainBlue,
          child:  Icon(Icons.mic,color: Colors.white,),
          )
          
        ],
      ),
    );
  }
}
