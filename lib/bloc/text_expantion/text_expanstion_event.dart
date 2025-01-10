part of 'text_expanstion_bloc.dart';

@immutable
sealed class TextExpansionEvent {}

class IsExpandedEvent extends TextExpansionEvent{
  final bool isSelected;
  IsExpandedEvent(this.isSelected){
    print("The sent value is $isSelected");
  }
}
