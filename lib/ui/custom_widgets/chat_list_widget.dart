import 'package:flutter/material.dart';
import 'package:task/ui/custom_widgets/profile_image_widget_pinned_chats.dart';

import '../../models/chat_model.dart';
import '../theme/sizes/sizes.dart';
import '../theme/style/colors.dart';
import '../theme/style/font_style.dart';

// ignore: must_be_immutable
class ChatListWidget extends StatelessWidget {
  int index;
   ChatListWidget({
    Key? key, required this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
                    textDirection: conversation[index].isResive
       ? TextDirection.ltr
       : TextDirection.rtl,
                    child: Padding(
     padding: commonPaddingHorizental(context, virtical: 10),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.end,
       children: [
         CircleImageWidget(
             image: conversation[index].profileImage),
         const SmallPadding(
           horizental: true,
         ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               padding: const EdgeInsets.all(12),
               width: width(context, 0.75),
               decoration: BoxDecoration(
                   color: conversation[index].isResive
                       ?Colors.grey[300]
                       : AppColors.mainBlue,
                   borderRadius: BorderRadius.circular(15)),
               child: Directionality(
                 textDirection: TextDirection.ltr,
                 child: Column(
                   children: [
                     conversation[index].isResive
                         ? Row(
                             mainAxisAlignment:
                                 MainAxisAlignment
                                     .spaceBetween,
                             children: [
                               Text(
                                 conversation[index].title,
                                 style: smallBlackFont()
                                     .copyWith(
                                         color: Colors.orange,
                                         fontWeight:
                                             FontWeight.bold),
                               ),
                               conversation[index].isAdmin
                                   ? Text(
                                       "admin",
                                       style: smallBlackFont()
                                           .copyWith(
                                               color: AppColors
                                                   .darkGray),
                                     )
                                   : const SizedBox(),
                             ],
                           )
                         : const SizedBox(),
                     conversation[index].isAdmin
                         ? const MediumPadding()
                         : const SizedBox(),
                     Text(
                       conversation[index].content,
                       style: smallBlackFont().copyWith(
                           color: conversation[index].isResive
                               ? AppColors.darkBlue
                               : Colors.white,
                           height: 1.6),
                     ),
                     const SmallPadding(),
                     Align(
                       alignment: Alignment.centerRight,
                       child: Text(
                         conversation[index].time,
                         style: smallBlackFont().copyWith(
                             color:
                                 conversation[index].isResive
                                     ? AppColors.lightGray
                                     : Colors.white),
                       ),
                     )
                   ],
                 ),
               ),
             ),
             conversation[index].hasImages
                 ? const MediumPadding()
                 : const SizedBox(),
             conversation[index].hasImages
                 ? Column(
                     crossAxisAlignment:
                         CrossAxisAlignment.start,
                     children: [
                       SizedBox(
                           width: width(context, 0.62),
                           height: height(context, 0.15),
                           child: Image.asset(
                             conversation[index]
                                 .images[0]
                                 .image,
                             fit: BoxFit.fill,
                           )),
                       const SmallPadding(),
                       Row(
                         children: [
                           SizedBox(
                             width: width(context, 0.3),
                             height: height(context, 0.15),
                             child: Image.asset(
                               conversation[index]
                                   .images[1]
                                   .image,
                               fit: BoxFit.fill,
                             ),
                           ),
                           const SmallPadding(
                             horizental: true,
                           ),
                           SizedBox(
                             width: width(context, 0.3),
                             height: height(context, 0.15),
                             child: Image.asset(
                               conversation[index]
                                   .images[2]
                                   .image,
                               fit: BoxFit.fill,
                             ),
                           ),
                         ],
                       ),
                     ],
                   )
                 : const SizedBox(),
           ],
         ),
       ],
     ),
                    ),
                  );
  }
}

