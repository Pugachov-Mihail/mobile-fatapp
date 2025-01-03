import 'package:flutter/material.dart';

class RegistrationUi extends StatefulWidget {
  final GlobalKey<FormState> registerForm;
  FormFieldValidator<String?> validateLogin;
  FormFieldValidator<String?> validatePass;
  FormFieldValidator<String?> validatePass2;
  FormFieldValidator<String?> validateEmail;
  Function register;

  RegistrationUi({
    super.key,
    required this.registerForm,
    required this.validatePass,
    required this.validateLogin,
    required this.validatePass2,
    required this.validateEmail,
    required this.register
  });

  @override
  State<RegistrationUi> createState() => _RegistrationUiState();
}

class _RegistrationUiState extends State<RegistrationUi> {
  double _height = 500;
  bool _err = false;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 350,
            height: _height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[300],
            ),
            padding: const EdgeInsets.all(20),
            child: Form(
                key: widget.registerForm,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Логин",
                            labelStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        validator: widget.validateLogin,
                      ),
                      const SizedBox(height: 12,),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "E-mail"
                        ),
                        validator: widget.validateEmail,
                      ),
                      const SizedBox(height: 12,),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Пароль",
                            labelStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        validator: widget.validatePass,
                      ),
                      const SizedBox(height: 12,),
                      TextFormField(
                        validator: widget.validatePass2,
                        decoration: const InputDecoration(
                            hintText: "Повторите пароль",
                            labelStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ),
                      const SizedBox(height: 12,),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Имя",
                            labelStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        //  validator: widget.validateLogin,
                      ),
                      const SizedBox(height: 12,),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Фамилия",
                            labelStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        //  validator: widget.validateLogin,
                      ),
                      const SizedBox(height: 30,),
                      ElevatedButton(
                          style: ButtonStyle(
                            foregroundColor: const WidgetStatePropertyAll<Color>(Colors.black),
                            backgroundColor: WidgetStatePropertyAll<Color>(Colors.green.shade500),
                          ),
                          onPressed: (){
                            if (widget.registerForm.currentState!.validate()){
                                widget.register();
                            } else {
                              setState(() {
                                if (_height == 500){
                                  _height += 50;
                                  _err = true;
                                } else if (_height > 500 && !_err) {
                                  _height -= 50;
                                }
                              });
                            }
                          },
                          child: const Text(
                            "Зарегистрироваться",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          )
                      ),
                    ]
                )
            )
        )
    );
  }
}
