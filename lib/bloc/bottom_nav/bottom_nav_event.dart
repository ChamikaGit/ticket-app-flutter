part of 'bottom_nav_bloc.dart';

@immutable
sealed class BottomNavEvent {}

class OnItemTapped extends BottomNavEvent {
  final int index;
  OnItemTapped(this.index){
    print("My Event OnItemTapped Item Constrctor $index");
  }
  //OnItemTapped is the constructor and it can have a body like this
}

