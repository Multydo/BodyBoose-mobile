import 'package:BodyBoost/Routes/AppRoute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:BodyBoost/Controllers/RegistrationController.dart';



class Registration extends GetView<RegistrationController> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[900],
          title: Center(
            child: Text(
              "Register",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Colors.blueGrey[50],
        // body: Expanded(
        //   child: SingleChildScrollView(
        //     child: SafeArea(
        //       child: Padding(
        //         padding: const EdgeInsets.all(10.0),
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.start,
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //
        //           children: <Widget>[
        //             SizedBox(height: 10,),
        //             Text("Name"),
        //             TextField(
        //               decoration: InputDecoration(
        //                 border: OutlineInputBorder(),
        //
        //               ),
        //               controller: controller.name,
        //
        //             ),
        //             SizedBox(height: 10,),
        //             Text("Email"),
        //             TextField(
        //               decoration: InputDecoration(
        //                   border: OutlineInputBorder(
        //                   )
        //               ),
        //                 controller: controller.email,
        //             ),
        //             SizedBox(height: 10,),
        //             Text("Phone"),
        //             TextField(
        //               decoration: InputDecoration(
        //                   border: OutlineInputBorder(
        //                   )
        //               ),
        //                 controller: controller.phone,
        //             ),
        //             SizedBox(height: 10,),
        //             Text("Password"),
        //             TextField(
        //               obscureText: true,
        //               decoration: InputDecoration(
        //                   border: OutlineInputBorder(
        //                   )
        //               ),
        //                 controller: controller.password,
        //             ),
        //             SizedBox(height: 20),
        //
        //             Center(
        //               child: ElevatedButton(
        //                   onPressed: (){
        //                     controller.register();
        //                   },
        //                   child: Text("Register")),
        //             ),
        //
        //
        //           ],
        //         ),
        //       ),
        //
        //
        //     ),
        //   ),
        // )

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
                        "Name",
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
                        controller: controller.name,
                      ),
                      SizedBox(height: 10),
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
                      SizedBox(height: 10),
                      Text(
                        "Phone Number",
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
                        controller: controller.phone,
                      ),
                      SizedBox(height: 60),
                      Container(
                        width: double.infinity,
                        child: Center(
                          child: SizedBox(
                            width: double.infinity, // Make the button full-width
                            child: ElevatedButton(
                              onPressed: () {
                                controller.register();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange[900], // Set the background color
                                padding: EdgeInsets.symmetric(vertical: 16), // Optional: increase button height
                              ),
                              child: Text(
                                "Register",
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
                            Text("already have an account?", style: TextStyle(color: Colors.blueGrey[50])),
                            ElevatedButton(
                              onPressed: () {
                                Get.toNamed(AppRoute.register);
                              },
                              style: ButtonStyle(

                                backgroundColor: MaterialStateProperty.all(Colors.blueGrey[900]),
                              ),
                              child: Text("Sign in", style: TextStyle(color: Colors.blueGrey[50])),
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


