part of 'text_expansion_cubit.dart';

@immutable
sealed class TextExpansionCubitState {}

final class TextExpansionInitial extends TextExpansionCubitState {}

final class IsExpandedState extends TextExpansionCubitState {
  final bool isExpanded;
  IsExpandedState(this.isExpanded);
}
