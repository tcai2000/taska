import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/routes/routers_path.dart';
import 'package:my_app/views/constants/constants_export.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: [
          SvgPicture.asset(
            ImagesString.logoImage,
            height: 40,
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              AppIcons.addIcon,
              height: 24,
            ),
          ),
          const SizedBox(width: 20),
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              AppIcons.messageIcon,
              height: 24,
            ),
          )
        ],
      ),
    );
  }
}
