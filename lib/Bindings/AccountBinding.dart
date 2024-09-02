import 'package:BodyBoost/Controllers/AccountController.dart';
import 'package:get/get.dart';

class AccountBinding extends Bindings{
  
  @override
  void dependencies() {
    Get.lazyPut(() => AccountController());
  }
  
  
}