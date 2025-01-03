import 'package:flutter/material.dart';
import 'package:mobile_app/pages/auth_page.dart';
import 'package:mobile_app/pages/index_page.dart';
import 'package:mobile_app/pages/menu_page.dart';
import 'package:mobile_app/pages/registration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => IndexPage(),
        "/registration": (context) => RegistrationPage(),
        "/menu": (context) => MenuPage(),
      },
    );
  }
}
