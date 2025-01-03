import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'text_expanstion_provider.g.dart';

@riverpod
class TextExpanstionNotifier extends _$TextExpanstionNotifier{

  @override
  bool build(){
    return false;
  }

  void toggeleExpantion(bool isExpanded) {
    state = !isExpanded;
  }
}