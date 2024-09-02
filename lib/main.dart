import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:BodyBoost/Routes/AppPage.dart';
import 'package:BodyBoost/Routes/AppRoute.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoute.login, // Set the initial route
      getPages: AppPage.pages,
    );
  }
}
