import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:BodyBoost/Core/Network/DioClient.dart';
import 'package:BodyBoost/Core/showSuccessDialog.dart';
import 'package:BodyBoost/Models/User.dart';
import 'package:BodyBoost/Routes/AppRoute.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  late SharedPreferences prefs;

  @override
  void onInit() async {
    super.onInit();
    prefs = await SharedPreferences.getInstance();
    if (prefs.getString('token') != null) {
      Get.offNamed(AppRoute.home);
    }
  }

  void login() async {
    User user = User(password: password.value.text, email: email.value.text);
    String request_body = user.toJson();

    var post = await DioClient().getInstance().post('/login', data: request_body);
    if (post.statusCode == 200) {
 // Extract user email

      showSuccessDialog(Get.context!, "Success", "User Logged in Successfully", () {
        prefs.setString("token", post.data['token']);

        print('Token set: ${post.data['token']}');
        Get.offNamed(AppRoute.home);
      });
    } else {
      print('Login failed: ${post.data['error']}');
      Get.snackbar('Login Error', 'Invalid email or password');
    }
  }

}
