import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavCubitState> {
  BottomNavCubit() : super(BottomNavBarCubitSelected(0));

  void onItemTapped(int index){
    if(state is BottomNavBarCubitSelected){
      emit(BottomNavBarCubitSelected(index));
    }
  }
}
