import 'package:BodyBoost/Controllers/AccountController.dart';
import 'package:BodyBoost/Routes/AppRoute.dart';
import 'package:BodyBoost/widgets/bottomNavbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Account extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.orange[900],
              child: Icon(
                Icons.person,
                color: Colors.blueGrey[700],
              ),
            ),
            Obx(() {
              return controller.isLoggedIn.value
                  ? ElevatedButton(
                onPressed: () {
                  controller.logout();
                },
                child: Text("Logout"),
              )
                  : ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoute.login);
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.orange[900]),
                ),
              );
            }),
          ],
        ),
        toolbarHeight: 90,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blueGrey[800],
          ),
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Username:",
                              style: TextStyle(color: Colors.blueGrey[50]),
                            ),
                            Obx(() {
                              return Text(
                                controller.userName.value,
                                style: TextStyle(color: Colors.blueGrey[50]),
                              );
                            }),
                          ],
                        ),
                      ),
                      Divider(color: Colors.blueGrey[50]),
                      Container(
                        padding: EdgeInsets.all(22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Email:",
                              style: TextStyle(color: Colors.blueGrey[50]),
                            ),
                            Obx(() {
                              return Text(
                                controller.userEmail.value,
                                style: TextStyle(color: Colors.blueGrey[50]),
                              );
                            }),
                          ],
                        ),
                      ),
                      Divider(color: Colors.blueGrey[50]),
                      // Other fields remain the same...
                    ],
                  ),
                ),
              ),
              // Add the BottomNavbar here to ensure it is always at the bottom
              BottomNavbar(),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.orange[900],
              padding: EdgeInsets.all(9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My account",
                    style: TextStyle(
                      color: Colors.blueGrey[50],
                      fontSize: 18,
                    ),
                  ),
                  Icon(Icons.edit),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
