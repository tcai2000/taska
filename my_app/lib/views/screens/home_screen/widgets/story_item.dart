import 'package:flutter/material.dart';
import 'package:my_app/models/models_export..dart';
import 'package:my_app/views/constants/constants_export.dart';
import 'package:my_app/views/styled_components/styled_export.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
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
            child: CircleAvatarComponent(
              size: 62,
              imageUrl: storyModel.imageUrl ?? "",
            ),
          ),
          const SizedBox(height: 4),
          Text(
            storyModel.userName ?? "",
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
