import 'package:flutter/material.dart';

import '../api/models/person_models.dart';

class PersonUI extends StatelessWidget {
  final Person person;

  const PersonUI({super.key, required this.person});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 200,
                        child: Text(
                          "${person.name}  ${person.lastName}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: SizedBox.fromSize(
                              size: const Size.fromRadius(40),
                              child: Image(image: AssetImage("lib/images/auth_page.jpg"))
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Твои данные:",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Row(children: [Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text("Возраст: ${person.age}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )]),
              Row(children: [Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text("Вес: ${person.weight}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )]),
            ],
          ),
          ElevatedButton(
            onPressed: (){},
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.red[400])
            ),
            child: const Text(
                "Выйти из профиля",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600
                ),
            ),
          )
        ],
      )
    );
  }
}