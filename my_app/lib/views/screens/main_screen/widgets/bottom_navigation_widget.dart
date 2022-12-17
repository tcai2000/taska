import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/blocs/bottom_navbar/bottom_navbar_cubit.dart';
import 'package:my_app/views/constants/constants_export.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavbarCubit, BottomNavbarState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(width: 1, color: AppColor.blueColor500),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              bottomNavbarItem(
                handleTap: () {
                  BlocProvider.of<BottomNavbarCubit>(context)
                      .getBottomNavbarItem(BottomNavbarItem.home);
                },
                icon: state.index == 0
                    ? AppIcons.homeEnableIcon
                    : AppIcons.homeIcon,
              ),
              bottomNavbarItem(
                handleTap: () {
                  BlocProvider.of<BottomNavbarCubit>(context)
                      .getBottomNavbarItem(BottomNavbarItem.search);
                },
                icon: state.index == 1
                    ? AppIcons.searchEnableIcon
                    : AppIcons.searchIcon,
              ),
              bottomNavbarItem(
                handleTap: () {
                  BlocProvider.of<BottomNavbarCubit>(context)
                      .getBottomNavbarItem(BottomNavbarItem.add);
                },
                height: 40,
                icon: AppIcons.addIcon,
              ),
              bottomNavbarItem(
                handleTap: () {
                  BlocProvider.of<BottomNavbarCubit>(context)
                      .getBottomNavbarItem(BottomNavbarItem.favorite);
                },
                icon: state.index == 3
                    ? AppIcons.heartEnableIcon
                    : AppIcons.heartIcon,
              ),
              bottomNavbarItem(
                handleTap: () {
                  BlocProvider.of<BottomNavbarCubit>(context)
                      .getBottomNavbarItem(BottomNavbarItem.profile);
                },
                icon: state.index == 4
                    ? AppIcons.profileEnableIcon
                    : AppIcons.profileIcon,
              ),
            ],
          ),
        );
      },
    );
  }
}

bottomNavbarItem({
  required String icon,
  required Function handleTap,
  double? height = 24,
}) {
  return InkWell(
    onTap: () => handleTap(),
    child: SvgPicture.asset(
      icon,
      height: height,
    ),
  );
}
