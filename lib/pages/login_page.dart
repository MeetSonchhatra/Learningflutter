import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    obscureText: true,
                    //password n show krva obsecure true
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "password",
                    )),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeroute);
                    })
              ],
            ),
          )
        ],
      ),
    ));
  }
}
