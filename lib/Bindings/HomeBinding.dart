import 'package:get/get.dart';
import 'package:BodyBoost/Controllers/HomeController.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut(() => HomeController());
  }

}
