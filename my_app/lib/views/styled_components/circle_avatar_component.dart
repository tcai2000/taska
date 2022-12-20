import 'package:flutter/material.dart';
import 'package:my_app/views/constants/colors.dart';

class CircleAvatarComponent extends StatelessWidget {
  const CircleAvatarComponent({
    Key? key,
    required this.size,
    required this.imageUrl,
    this.isStory = false,
  }) : super(key: key);
  final double size;
  final String imageUrl;
  final bool isStory;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        gradient: isStory ? null : AppColor.linearGradient,
        color: AppColor.greyColor100,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: AppColor.whiteColor,
            width: 2,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
