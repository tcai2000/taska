import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_app/views/constants/constants_export.dart';

part 'bottom_navbar_state.dart';

class BottomNavbarCubit extends Cubit<BottomNavbarState> {
  BottomNavbarCubit()
      : super(const BottomNavbarState(BottomNavbarItem.home, 0));
  void getBottomNavbarItem(BottomNavbarItem bottomNavbarItem) {
    switch (bottomNavbarItem) {
      case BottomNavbarItem.home:
        emit(const BottomNavbarState(BottomNavbarItem.home, 0));
        break;
      case BottomNavbarItem.search:
        emit(const BottomNavbarState(BottomNavbarItem.search, 1));
        break;
      case BottomNavbarItem.add:
        emit(const BottomNavbarState(BottomNavbarItem.add, 2));
        break;
      case BottomNavbarItem.favorite:
        emit(const BottomNavbarState(BottomNavbarItem.favorite, 3));
        break;
      case BottomNavbarItem.profile:
        emit(const BottomNavbarState(BottomNavbarItem.profile, 4));
        break;
    }
  }
}
