import 'package:egapp/pages/cart_page.dart';
import 'package:egapp/pages/home_detail_page.dart';
import 'package:egapp/pages/login_page.dart';
import 'package:egapp/utils/routes.dart';
import 'package:egapp/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lighttheme(context),
      
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeroute: (context) => HomePage(),
        MyRoutes.loginroute: (context) => LoginPage(),
        MyRoutes.cartroute: (context) => CartPage()
      },
    );
  }
}
