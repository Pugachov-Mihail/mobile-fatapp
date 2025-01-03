import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobile_app/api/models/auth_models.dart';

class AuthUI extends StatefulWidget{
  Function() registerBtn;
  Function() loginBtn;
  FormFieldValidator<String?> validateLogin;
  FormFieldValidator<String?> validatePass;
  Function(String) validateLocal;

  AuthUI({
    super.key,
    required this.registerBtn,
    required this.loginBtn,
    required this.validateLogin,
    required this.validatePass,
    required this.validateLocal
  });

  @override
  State<AuthUI> createState() => _AuthUIState();
}

class _AuthUIState extends State<AuthUI> {
  final GlobalKey<FormState> _authForm = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  double _height = 261;
  String errorValue = "";
  late LoginJson loginJson;
  final _locale = RegExp(r'[A-Za-z0-9@!.]');
  bool _showPass = false;
  late String login;
  late String password;


  void _toggleVisibility(){
    setState(() {
      _showPass = !_showPass;
    });
  }

  bool _validateLocale(String value) {
    if (_locale.hasMatch(value)) {
         return true;
    }
     return false;
  }

  void _updateHeight(){
    setState(() {
      if (_height == 261) {
        _height += 36;
      }
    });
  }

  void _setLogin(String value){
      setState(() {
        for (int i = 0; i < value.length; i++) {
          if (_validateLocale(value[i])) {
            loginJson.login = controller.text;
            errorValue = "";
          } else {
            controller.clear();
            errorValue = "Только латиница или цифры";
            break;
          }
        }
      });
  }

  bool _onLogin(){
    if (controller.text.isEmpty){
      setState(() {
        errorValue = "Введите логин";
      });
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: _height,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[300],
        ),
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _authForm,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Text(l),
              //TODO onChange добавить для изменения размера контейнера при выводе ошибки
              // необходимо добавить флаг для корректности валидации
              TextFormField(
                maxLength: 25,
                onChanged: (value) => _setLogin(value),
                controller: controller,
                decoration: InputDecoration(
                  hintText: "Логин",
                  error: Text(
                    errorValue,
                    style: const TextStyle(color: Colors.red),
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  )
                ),
                //validator: widget.validateLogin,
              ),
              const SizedBox(height: 12,),
              TextFormField(
                  maxLength: 30,
                  obscureText: !_showPass,
                  decoration: InputDecoration(
                    hintText: "Пароль",
                    suffixIcon: GestureDetector(
                      onTap: (){
                        _toggleVisibility();
                      },
                      child: Icon(
                        _showPass ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey[500],
                      ),
                    ),
                    labelStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    )
                ),
                validator: widget.validatePass,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: const WidgetStatePropertyAll<Color>(Colors.black),
                        backgroundColor: WidgetStatePropertyAll<Color>(Colors.greenAccent.shade200),
                      ),
                      onPressed: (){
                          if (_authForm.currentState!.validate()) {
                            if (_onLogin()) {
                              widget.loginBtn;
                            }
                          } else {
                            _updateHeight();
                          }
                      },
                      child: const Text(
                          "Войти",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),
                      )
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: const WidgetStatePropertyAll<Color>(Colors.black),
                        backgroundColor: WidgetStatePropertyAll<Color>(Colors.greenAccent.shade200),
                      ),
                      onPressed: (){
                          widget.registerBtn();
                      },
                      child: const Text(
                        "Регистрация",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),
                      )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

