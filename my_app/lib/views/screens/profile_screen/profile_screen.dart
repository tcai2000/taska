import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/views/constants/constants_export.dart';

import 'widgets/profile_exports.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.greyColor200,
      child: Column(
        children: const [
          AppBarProfile(),
          ProfileInformation(),

          // Padding(
          //   padding: EdgeInsets.symmetric(vertical: 10),
          //   child: Divider(
          //     color: AppColor.greyColor500,
          //   ),
          // ),
          Expanded(child: ProfileTabBarWithBody())
        ],
      ),
    );
  }
}
