import 'package:task/helpers/constants.dart';

class PinnedChatsModel {
  final String image;
  final String title;
  final String name;
  final bool isSent;
  final bool newMessage ;
  final String time ;

  PinnedChatsModel({
    required this.image,
    required this.title,
    required this.name,
    required this.isSent,
    required this.newMessage,
    required this.time,
  });
}

List<PinnedChatsModel> pinnedChats = [
  PinnedChatsModel(
      image: Constants.personImage, title: "That’s awesome! ", name: "Mike Wazowski", isSent: true , newMessage: false , time: "18:30"),
  PinnedChatsModel(
      image: Constants.personImage1, title: "Pls take a look at theeeeeeeeeee", name: "Darlene Steward", isSent: false , newMessage: true, time: "16:30"),
  PinnedChatsModel(
      image:  Constants.personImage2, title: "Preparing for next vac", name: "Gregory Robertson", isSent: false , newMessage: false, time: "10:30"),
  PinnedChatsModel(
      image:  Constants.personImage3, title: "I’d like to watch  ", name: "Dwight Wilson", isSent: true , newMessage: false, time: "02:30"),
];
