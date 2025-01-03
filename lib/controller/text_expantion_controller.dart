import 'package:get/get.dart';

class TextExpansionController extends GetxController{
  var isExpanded = false.obs;

  void toggeleExpantion() {
      isExpanded.value = !isExpanded.value;
    print("Value is isExpanded :${isExpanded.value}");
  }

}