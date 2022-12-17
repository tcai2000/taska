part of 'bottom_navbar_cubit.dart';

class BottomNavbarState extends Equatable {
  final BottomNavbarItem bottomNavbarItem;
  final int index;

  const BottomNavbarState(this.bottomNavbarItem, this.index);
  @override
  List<Object?> get props => [bottomNavbarItem, index];
}

// class BottomNavbarInitial extends BottomNavbarState {}
