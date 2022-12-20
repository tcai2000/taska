import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/views/constants/constants_export.dart';

import 'profile_exports.dart';

class ProfileTabBarWithBody extends StatefulWidget {
  const ProfileTabBarWithBody({super.key});

  @override
  State<ProfileTabBarWithBody> createState() => _ProfileTabBarWithBodyState();
}

class _ProfileTabBarWithBodyState extends State<ProfileTabBarWithBody>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 44,
          child: TabBar(
            controller: tabController,
            tabs: [
              Tab(
                  child: SvgPicture.asset(
                AppIcons.gridIcon,
                color: AppColor.blackColor,
                height: 23,
              )),
              Tab(
                child: SvgPicture.asset(
                  AppIcons.tagsIcon,
                  color: AppColor.blackColor,
                  height: 23,
                ),
              )
            ],
            indicatorColor: AppColor.blackColor,
            indicatorWeight: 1,
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: const [MyPostBody(), TagsBodyWidget()],
          ),
        )
      ],
    );
  }
}
