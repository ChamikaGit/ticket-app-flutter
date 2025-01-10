import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'text_expanstion_event.dart';
part 'text_expanstion_state.dart';

class TextExpansionBloc extends Bloc<TextExpansionEvent, TextExpansionState> {
  TextExpansionBloc() : super(IsExpandedState(false)) {
    on<IsExpandedEvent>((event, emit) {
      emit(IsExpandedState(!event.isSelected));
    });
  }
}
