import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:BodyBoost/Core/Network/DioClient.dart';
import 'package:BodyBoost/Core/showSuccessDialog.dart';
import 'package:BodyBoost/Models/User.dart';
import 'package:BodyBoost/Routes/AppRoute.dart';

class RegistrationController extends GetxController{

  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  late SharedPreferences prefs;

  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    prefs = await SharedPreferences.getInstance();
  }

  void register() async{


    User user = User(name: name.value.text, email:email.value.text, phone: phone.value.text, password: password.value.text);
    String requestBody = user.toJson();

    var post = await DioClient().getInstance().post("/register",data: requestBody);

    if (post.statusCode == 200){
      showSuccessDialog(Get.context!, "Success", "User Registered Successfully", ()
      {
        print(post.data);
        Get.offNamed(AppRoute.home);
        prefs.setString("token", post.data['token']);
      });
    }
  }

}