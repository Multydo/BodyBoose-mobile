
import 'package:BodyBoost/Controllers/SettingsController.dart';
import 'package:get/get.dart';

class SettingsBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut(()=> SettingsController());
  }


}
