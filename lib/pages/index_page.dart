import 'package:flutter/material.dart';
import 'package:mobile_app/pages/auth_page.dart';
import 'package:mobile_app/pages/menu_page.dart';

class IndexPage extends StatelessWidget{
  IndexPage({super.key});
  String token = "1221";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: token.isEmpty ? AuthPage(): MenuPage(),
    );
  }
}