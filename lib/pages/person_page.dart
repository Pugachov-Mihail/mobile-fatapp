import 'package:flutter/material.dart';
import 'package:mobile_app/api/models/person_models.dart';
import 'package:mobile_app/components/person_ui.dart';


class PersonPage extends StatelessWidget {
  final Person testPers = Person("Иван", "Подзалупный", "", 75.3, 15);

  PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    // TODO: implement build
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("lib/images/auth_page.jpg"), fit: BoxFit.cover, opacity: 0.5),
        ),
        child: Center(
            child: Container(
              width: screenWidth-30,
              height: screenHeight-150,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: PersonUI(person: testPers,)
            )
        ),
    );
  }
}