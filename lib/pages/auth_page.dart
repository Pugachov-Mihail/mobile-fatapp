import 'package:flutter/material.dart';
import 'package:mobile_app/modules/auth/auth_ui.dart';
import 'package:mobile_app/pages/registration_page.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final _locale = RegExp(r'[A-Za-z0-9@!.]');
  final _passReg = RegExp(r'[A-Za-z0-9@!./=\-+|]');

  bool _validatePassword(String value){
    for (int i = 0; i < value.length; i++){
      if (!_passReg.hasMatch(value[i])){
        return true;
      }
    }
    return false;
  }

  bool _validateLocale(String value) {
    for (int i = 0; i < value.length; i++) {
      if (_locale.hasMatch(value[i])) {
        return true;
      } else {
        continue;
      }
    }
    return false;
  }

  String? _validateLogin(String? value){
      if (value!.isEmpty) {
        return "Введите логин";
      } else {
        if (_validateLocale(value)) {
          return "Только латиница или цифры";
        }
      }
    return null;
  }

  String? _validatePass(String? value){
    if (value!.isEmpty){
      return "Введите пароль";
    } else {
      if(_validatePassword(value)){
        return "Только латиница, цифры, символы";
      }
    }
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return AuthUI(
      registerBtn: () {
        Navigator.push(
          context, MaterialPageRoute(
            builder: (context)=>RegistrationPage())
        ); //.pushNamed(context, "/registration", arguments: [validateLogin, validatePass, ]);},
      },
      loginBtn: () {  },
      validateLogin: _validateLogin,
      validatePass: _validatePass,
      validateLocal: _validateLocale,
    );
  }
}