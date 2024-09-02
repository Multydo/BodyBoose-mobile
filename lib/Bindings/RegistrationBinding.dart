import 'package:get/get.dart';
import 'package:BodyBoost/Controllers/RegistrationController.dart';

class RegistrationBinding extends Bindings{
  @override
  void dependencies() {
    
    Get.lazyPut(() => RegistrationController());
  }

}
