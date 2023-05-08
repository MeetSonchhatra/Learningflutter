import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
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
            "Welcome $name",
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
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
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
                // ElevatedButton(
                //     child: const Text(
                //       "Login",
                //       style: TextStyle(fontSize: 18),
                //     ),
                //     style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                //     onPressed: () {
                //       Navigator.pushNamed(context, MyRoutes.homeroute);
                //     })
                InkWell(
                  onTap: () async{
                    setState(() {
                      changebutton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeroute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 40,
                    width: changebutton ? 50 : 150,
                    alignment: Alignment.center,
                    child: changebutton
                        ? Icon(Icons.done, color: Colors.white)
                        : Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        //shape: changebutton?BoxShape.circle :BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(changebutton ? 50 : 8)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
