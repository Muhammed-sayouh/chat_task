import 'package:task/helpers/constants.dart';

class ChatModel {
  final String time;
  final String profileImage;
  final String title;
  final String content;
  final bool isAdmin;
  final bool isResive;
  final bool hasImages;
  final List<Images> images;

  ChatModel(
      {required this.time,
      required this.title,required this.profileImage,
      required this.content,
      required this.isAdmin,
      required this.isResive,
      required this.hasImages,
      required this.images});
}

class Images {
  final String image;
  Images(this.image);
}

List<ChatModel> conversation = [
  ChatModel(
    profileImage: Constants.personImage,
      time: "16:04",
      title: "Mike Mazowski",
      content:
          "Hello guys, we have discussed about post-corona vacation plan and our decision is to go to Bali. We will have a very big party after this corona ends! These are some images about our destination",
      isAdmin: true,
      isResive: true,
      hasImages: true,
      images: adminImagesChat),
  ChatModel(
    profileImage: Constants.personImage1,

    time: "16:04",
    title: "",
    content:
        "That’s very nice place! you guys made a very good decision. Can’t wait to go on vacation!",
    isAdmin: false,
    isResive: false,
    hasImages: false,
    images: [],
  ),
];

List<Images> adminImagesChat = [
  Images(Constants.chatigImage1),
  Images(Constants.chatigImage2),
  Images(Constants.chatigImage3),
];
