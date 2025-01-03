import 'package:flutter/material.dart';
import 'package:mobile_app/modules/auth/registration_ui.dart';

class RegistrationPage extends StatefulWidget{

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final GlobalKey<FormState> _registerForm = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  final _locale = RegExp(r'[A-Za-z0-9@!.]');
  final _passReg = RegExp(r'[A-Za-z0-9@!./=\-+|]');
  final _emailReg = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  bool _validateRegexEmail(String value){
    if (_emailReg.hasMatch(value)){
      return true;
    }
    return false;
  }


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

  String? _validateEmail(String? value){
    if (value!.isNotEmpty) {
      if (_validateRegexEmail(value)) {
        return null;
      }
      return "Не корректный e-mail";
    }
    return "Введите e-mail";
  }

  String? _validateLogin(String? value){
    if (value!.isEmpty) {
      return "Введите логин";
    } else {
      if (!_validateLocale(value)) {
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


  String? _validatePass2(String? value){
    if (value!.isEmpty){
      return "Повторите пароль";
    } else {
      if(_validatePassword(value)){
        return "Только латиница, цифры, символы";
      }
    }
    return null;
  }

  void _register(){
    Navigator.pushNamed(context, "/menu");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent[100],
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back)),
        ),
        body: RegistrationUi(
          registerForm: _registerForm,
          validateLogin: _validateLogin,
          validatePass: _validatePass,
          validatePass2: _validatePass2,
          validateEmail: _validateEmail,
          register: _register,
        )
    );
  }
}