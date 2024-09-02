import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:BodyBoost/Routes/AppRoute.dart';

class HomeController extends GetxController{

  late SharedPreferences prefs;

  @override
  void onInit() async{
    super.onInit();
    prefs = await SharedPreferences.getInstance();
  }


  // void logout() {
  //
  //   prefs.remove('token');
  //   Get.offNamed(AppRoute.login);
  //
  // }



}

