import 'package:get/get.dart';

class BottomNavController extends GetxController{
  //this variable reactive and observable
  //this also a public variable not a _selectIndex private
  //Rx Int
  var selectIndex = 0.obs;


  void onItemTapped(int index) {
    print("My index is :$index");
    //.value is needed
    selectIndex.value = index;
  }

}