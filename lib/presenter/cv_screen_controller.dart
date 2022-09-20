import 'package:get/get.dart';

class CVScreenController extends GetxController{
  RxBool isLightTheme = true.obs;

  changeTheme(){
    isLightTheme = isLightTheme.isTrue ? false.obs : true.obs;
  }
}