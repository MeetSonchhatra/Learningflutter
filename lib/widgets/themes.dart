import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lighttheme(BuildContext context) =>ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            toolbarTextStyle: Theme.of(context).textTheme.headlineSmall, titleTextStyle: Theme.of(context).textTheme.headlineSmall,

          ),);
  
  }