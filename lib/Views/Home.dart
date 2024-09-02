import 'package:BodyBoost/widgets/bottomNavbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:BodyBoost/Controllers/HomeController.dart';
import 'package:BodyBoost/Routes/AppRoute.dart';

class Home extends GetView<HomeController> {
  var CaloriesCount = 1500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey[900],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoute.account);
              },
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                elevation: 0,
                shape: CircleBorder(),
              ),
              child: CircleAvatar(
                backgroundColor: Colors.orange[900],
                child: Icon(
                  Icons.person,
                  color: Colors.blueGrey[700],
                ),
              ),
            ),
            Text(
              "BODY BOOST",
              style: TextStyle(
                color: Colors.orange[900],
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey[800],
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Full-width image
                  Container(
                    width: double.infinity,
                    child: Image.asset(
                      'images/Hands-Clapping-Chaulk-Kettlebell.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(8, 15, 8, 15),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[700],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                            backgroundColor: Colors.orange[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          child: Text(
                            "CALORIES TO BURN",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "$CaloriesCount",
                          style: TextStyle(
                            color: Colors.blue[100],
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Add logic to increase calories
                              },
                              child: Text("+", style: TextStyle(fontSize: 25)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Add logic to decrease calories
                              },
                              child: Text("-", style: TextStyle(fontSize: 25)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomNavbar(), // Positioned at the bottom of the screen
        ],
      ),
    );
  }
}
