import 'package:flutter/material.dart';
import 'package:my_app/models/models_export..dart';
import 'package:my_app/views/constants/constants_export.dart';

class AddStoryItem extends StatelessWidget {
  const AddStoryItem({
    Key? key,
    required this.storyModel,
    required this.onTap,
    required this.onLongPress,
  }) : super(key: key);

  final StoryModel storyModel;
  final Function onTap;
  final Function onLongPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () => onTap(),
            onLongPress: () => onLongPress(),
            child: Stack(
              children: [
                Container(
                  height: 62,
                  width: 62,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: AppColor.greyColor100,
                      width: 2,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      storyModel.imageUrl ?? "",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 2,
                    right: 2,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColor.blueColor500,
                          border: Border.all(color: AppColor.whiteColor)),
                      child: const Icon(
                        Icons.add,
                        color: AppColor.whiteColor,
                        size: 12,
                      ),
                    ))
              ],
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            AppStrings.myStory,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
