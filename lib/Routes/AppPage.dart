import 'package:BodyBoost/Bindings/AccountBinding.dart';
import 'package:BodyBoost/Bindings/ExercisesBinding.dart';
import 'package:BodyBoost/Bindings/SettingsBinding.dart';
import 'package:BodyBoost/Views/Exercises.dart';
import 'package:BodyBoost/Views/Settings.dart';
import 'package:get/get.dart';
import 'package:BodyBoost/Bindings/HomeBinding.dart';
import 'package:BodyBoost/Bindings/LoginBinding.dart';
import 'package:BodyBoost/Bindings/RegistrationBinding.dart';
import 'package:BodyBoost/Routes/AppRoute.dart';
import 'package:BodyBoost/Views/Home.dart';
import 'package:BodyBoost/Views/Account.dart';
import 'package:BodyBoost/Views/Login.dart';
import 'package:BodyBoost/Views/Registration.dart';


class AppPage{
  static final List<GetPage> pages = [
    GetPage(name: AppRoute.register, page: ()=>Registration(), binding: RegistrationBinding()),
    GetPage(name: AppRoute.login, page: ()=>Login(), binding: LoginBinding()),
    GetPage(name: AppRoute.home, page: ()=>Home(), binding: HomeBinding()),
    GetPage(name: AppRoute.account, page: ()=> Account(), binding: AccountBinding()),
    GetPage(name: AppRoute.exercises, page: ()=> Exercises(), binding: ExercisesBinding()),
    GetPage(name: AppRoute.settings, page: ()=> Settings(), binding: SettingsBinding()),



  ];

}