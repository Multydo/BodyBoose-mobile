import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:BodyBoost/Controllers/LoginController.dart';
import 'package:BodyBoost/Routes/AppRoute.dart';

class Login extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        title: Center(
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Container(
          color: Colors.blueGrey[700],
          child: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 50),
                      Text(
                        "Email",
                        style: TextStyle(color: Colors.blueGrey[50]),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // Default border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange), // Border color when focused
                          ),
                        ),
                        controller: controller.email,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Password",
                        style: TextStyle(color: Colors.blueGrey[50]),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // Default border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange), // Border color when focused
                          ),
                        ),
                        controller: controller.password,
                      ),
                      SizedBox(height: 60),
                      Container(
                        width: double.infinity,
                        child: Center(
                          child: SizedBox(
                            width: double.infinity, // Make the button full-width
                            child: ElevatedButton(
                              onPressed: () {
                                controller.login();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange[900], // Set the background color
                                padding: EdgeInsets.symmetric(vertical: 16), // Optional: increase button height
                              ),
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.blueGrey[50]), // Text color for contrast
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 25),
                      Center(
                        child: Column(
                          children: [
                            Text("Don't have an account?", style: TextStyle(color: Colors.blueGrey[50])),
                            ElevatedButton(
                              onPressed: () {
                                Get.toNamed(AppRoute.register);
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.blueGrey[900]),
                              ),
                              child: Text("Register", style: TextStyle(color: Colors.blueGrey[50])),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
