import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/blocs/bottom_navbar/bottom_navbar_cubit.dart';
import 'package:my_app/views/constants/constants_export.dart';
import 'package:my_app/views/screens/add_screen/add_screen.dart';
import 'package:my_app/views/screens/chat_screen/chat_screen.dart';
import 'package:my_app/views/screens/home_screen/home_screen.dart';
import 'package:my_app/views/screens/notify_screen/notify_screen.dart';
import 'package:my_app/views/screens/profile_screen/profile_screen.dart';
import 'package:my_app/views/screens/search_screen/search_screen.dart';

class MainBodyWidget extends StatelessWidget {
  const MainBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavbarCubit, BottomNavbarState>(
      builder: (context, state) {
        if (state.bottomNavbarItem == BottomNavbarItem.home) {
          return const HomeScreen();
        } else if (state.bottomNavbarItem == BottomNavbarItem.search) {
          return const SearchScreen();
        } else if (state.bottomNavbarItem == BottomNavbarItem.add) {
          return const AddScreen();
        } else if (state.bottomNavbarItem == BottomNavbarItem.favorite) {
          return const NotifyScreen();
        } else if (state.bottomNavbarItem == BottomNavbarItem.profile) {
          return const ProfileScreen();
        }
        return Container();
      },
    );
  }
}
