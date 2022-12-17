import 'package:flutter/material.dart';
import 'package:my_app/views/constants/constants_export.dart';

final List<Widget> onBoardingWidgetList = AppConstants.onBoardingSlide
    .map(
      (item) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(),
          Image.asset(
            item["imageUrl"],
            fit: BoxFit.cover,
            height: 300,
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            item["title"],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            item["description"],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColor.greyColor500,
            ),
          ),
          const Spacer(),
        ],
      ),
    )
    .toList();
