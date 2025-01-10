part of 'text_expanstion_bloc.dart';

@immutable
sealed class TextExpansionState {}

class TextExpansionInitial extends TextExpansionState {}

class IsExpandedState extends TextExpansionState{
  final bool isSelected;
  IsExpandedState(this.isSelected);
}

