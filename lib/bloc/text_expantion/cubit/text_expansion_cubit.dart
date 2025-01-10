import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'text_expansion_state.dart';

class TextExpansionCubit extends Cubit<TextExpansionCubitState> {
  TextExpansionCubit() : super(IsExpandedState(false));

  void isExpandedEvent(bool isExpanded){
    if(state is IsExpandedState){
      emit(IsExpandedState(!isExpanded));
    }
  }
}
