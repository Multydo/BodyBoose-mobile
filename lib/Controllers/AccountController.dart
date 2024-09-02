import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:BodyBoost/Core/Network/DioClient.dart';
import 'package:BodyBoost/Core/showSuccessDialog.dart';
import 'package:BodyBoost/Models/User.dart';
import 'package:BodyBoost/Routes/AppRoute.dart';
import 'package:BodyBoost/Controllers/LoginController.dart';

class AccountController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();

  late SharedPreferences prefs;
  var isLoggedIn = false.obs;
  var userName = "".obs;
  var userEmail = "".obs;

  @override
  void onInit() async {
    super.onInit();
    prefs = await SharedPreferences.getInstance();
    if (prefs.getString('token') != null) {
      isLoggedIn.value = true;
      userName.value = prefs.getString('name') ?? '';
      userEmail.value = prefs.getString('email') ?? '';
    }
  }

  void logout() {
    prefs.remove('token');
    prefs.remove('name');
    prefs.remove('email');
    isLoggedIn.value = false;
    Get.offNamed(AppRoute.login);
  }

  // Example of using LoginController

}
