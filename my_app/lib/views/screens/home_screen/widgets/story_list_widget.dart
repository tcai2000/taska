import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/models/story_model.dart';
import 'package:my_app/views/constants/colors.dart';
import 'package:my_app/views/screens/home_screen/widgets/home_exports.dart';

class StoryListWidget extends StatelessWidget {
  const StoryListWidget({super.key, required this.storyModelList});

  final List<StoryModel> storyModelList;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 100,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColor.greyColor100))),
      // child: ListView(
      //   shrinkWrap: true,
      //   scrollDirection: Axis.horizontal,
      //   children: [

      //     StoryItem(
      //       storyModel: storyModel,
      //       onTap: () {},
      //       onLongPress: () {},
      //     ),
      //     StoryItem(
      //       storyModel: storyModel,
      //       onTap: () {},
      //       onLongPress: () {},
      //     ),
      //     StoryItem(
      //       storyModel: storyModel,
      //       onTap: () {},
      //       onLongPress: () {},
      //     ),
      //     StoryItem(
      //       storyModel: storyModel,
      //       onTap: () {},
      //       onLongPress: () {},
      //     ),
      //     StoryItem(
      //       storyModel: storyModel,
      //       onTap: () {},
      //       onLongPress: () {},
      //     ),
      //     StoryItem(
      //       storyModel: storyModel,
      //       onTap: () {},
      //       onLongPress: () {},
      //     ),
      //     StoryItem(
      //       storyModel: storyModel,
      //       onTap: () {},
      //       onLongPress: () {},
      //     ),
      //     StoryItem(
      //       storyModel: storyModel,
      //       onTap: () {},
      //       onLongPress: () {},
      //     ),
      //     StoryItem(
      //       storyModel: storyModel,
      //       onTap: () {},
      //       onLongPress: () {},
      //     )
      // ],
      child: ListView.builder(
        itemCount: storyModelList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return StoryItem(
            storyModel: storyModelList[index],
            onTap: () {},
            onLongPress: () {},
          );
        },
      ),
    );
  }
}
