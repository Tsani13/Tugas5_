import 'package:flutter/material.dart';
import 'package:tugas_pertemuan6/screens/homepage.dart';

void main() {
  runApp(MaterialApp(
  home: Homepage(),
  title: 'Cosmic Gallery',
  debugShowCheckedModeBanner: false,
  theme: ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.deepPurple,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  ),
));
}
