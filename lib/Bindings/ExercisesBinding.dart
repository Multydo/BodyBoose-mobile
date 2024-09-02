
import 'package:BodyBoost/Controllers/ExercisesController.dart';
import 'package:get/get.dart';

class ExercisesBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ExercisesController());
  }
  
}
