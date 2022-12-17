import 'package:flutter/material.dart';
import 'package:my_app/views/constants/constants_export.dart';

class StyledButtonWithAIcon extends StatelessWidget {
  const StyledButtonWithAIcon({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 32),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.greyColor100,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(
        imageUrl,
        height: 30,
      ),
    );
  }
}
