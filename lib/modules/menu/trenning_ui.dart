import 'package:flutter/material.dart';

import '../../api/models/trenning_models.dart';

class TrenningWidget extends StatelessWidget{
  final String title;
  final String image;
  final String descriptions;
  final Trener trenerName;
  final double raiting;

  const TrenningWidget({
    super.key,
    required this.title,
    required this.image,
    required this.descriptions,
    required this.raiting,
    required this.trenerName
  });



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Center(
        child: Container(
          height: 200,
          width: 380,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 200,
                  child: Column(
                    children: [
                      Text(title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      Text(descriptions, maxLines: 6,),
                      SizedBox(
                        child: Row(
                        children: [
                          const Icon(Icons.star),
                          const SizedBox(width: 5,),
                          Text("$raiting", style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),),
                        ],
                      ))
                    ],
                  ),
                ),
                Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: SizedBox.fromSize(
                                      size: const Size.fromRadius(40),
                                      child: Image.network(
                                        image,
                                        fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                  const SizedBox(height: 15,),
                  Text(trenerName.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                  ),
                  Text(trenerName.lastName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                  )
                ],
              ),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}