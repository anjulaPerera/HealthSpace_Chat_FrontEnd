import 'package:chat_dev_stack/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color.fromARGB(255, 8, 185, 103),
          primary: const Color.fromARGB(255, 2, 112, 50),
        ),
      ),
      // theme: ThemeData(
      //   primaryColor: Colors.amber,
      //   accentColor: Colors.red,
      // ),
      home: const Homescreen(),
      // theme: ThemeData(
      //   fontFamily: 'OpenSans',
      //   //primaryColor: Color(0xFF075E54),
      //   //colorScheme: ColorScheme.fromSwatch()
      //   //.copyWith(secondary: const Color(0xFF128C7E)),
      // ),
    );
  }
}
