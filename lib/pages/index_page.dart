import 'package:flutter/material.dart';
import 'package:mobile_app/pages/auth_page.dart';
import 'package:mobile_app/pages/menu_page.dart';

class IndexPage extends StatelessWidget{
  IndexPage({super.key});
  String token = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {  },
            icon: Icon(Icons.arrow_back)
        ),
      ),
      bottomNavigationBar: BottomAppBar(),
      body: token.isEmpty ? AuthPage(): MenuPage(),
    );
  }
}