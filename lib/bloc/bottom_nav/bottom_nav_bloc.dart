import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(BottomNavBarSelected(0)) {
    on<OnItemTapped>((event, emit) {
      print("Event Happened is $event");
      print("Happened Event value is ${event.index}");
      //emit can tell to others if there's a new value
      emit(BottomNavBarSelected(event.index));
      // emit(BottomNavInitial());
    });
  }
}
