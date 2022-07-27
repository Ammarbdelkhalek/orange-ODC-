import 'package:flutter/material.dart';
import 'package:myapp/modules/authentecationScreens/RegisterScreen.dart';
import 'package:myapp/modules/authentecationScreens/homeScreen.dart';
import 'package:myapp/modules/authentecationScreens/loginScreen.dart';

void main() {
  runApp(const PetsApp());
}

class PetsApp extends StatelessWidget {
  const PetsApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.brown),
      ),
    );
  }
}
