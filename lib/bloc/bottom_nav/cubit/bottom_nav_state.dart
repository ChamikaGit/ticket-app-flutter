part of 'bottom_nav_cubit.dart';

@immutable
sealed class BottomNavCubitState {}

final class BottomNavInitial extends BottomNavCubitState {}

final class BottomNavBarCubitSelected extends BottomNavCubitState{
  final int selectedIndex;
  BottomNavBarCubitSelected(this.selectedIndex);
}
