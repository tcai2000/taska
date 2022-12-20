import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/views/constants/constants_export.dart';

class AppBarProfile extends StatefulWidget {
  const AppBarProfile({super.key});

  @override
  State<AppBarProfile> createState() => _AppBarProfileState();
}

class _AppBarProfileState extends State<AppBarProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              children: const [
                Icon(Icons.lock),
                SizedBox(width: 4),
                Text(
                  "tcai2000",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  child: Icon(Icons.keyboard_arrow_down),
                ),
              ],
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.add_box_outlined,
              size: 30,
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.menu,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
