import 'package:get/get.dart';

class CVScreenController extends GetxController{
  RxBool isLightTheme = true.obs;

  changeTheme(bool value){
    isLightTheme = isLightTheme.isTrue ? false.obs : true.obs;
  }
}