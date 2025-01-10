part of 'bottom_nav_bloc.dart';

@immutable
sealed class BottomNavState {}

class BottomNavInitial extends BottomNavState {}

class BottomNavBarSelected extends BottomNavState{
  final int selectedIndex;
  BottomNavBarSelected(this.selectedIndex);
}




