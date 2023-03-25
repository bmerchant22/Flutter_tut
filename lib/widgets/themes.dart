import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme() => ThemeData(
    primarySwatch: Colors.deepOrange,
    fontFamily: GoogleFonts.lato().fontFamily,
    primaryTextTheme: GoogleFonts.latoTextTheme(),
    appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        // toolbarTextStyle: Theme.of(context).appBarTheme.toolbarTextStyle?.apply(
        //     color: Colors.black,
        // ),
        titleTextStyle: TextStyle(
            fontSize: 20 ,
            color: Colors.black
        )
    ),
  );
  static ThemeData darkTheme() => ThemeData(
    brightness: Brightness.dark,
  );
}