import 'package:flutter/material.dart';

class TrenningUi extends StatelessWidget {
  List<int> treningInfoAproach;
  String title;
  String avatar;

  TrenningUi({super.key, required this.treningInfoAproach, required this.title, required this.avatar});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10)
        ),
        height: 250,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 100,
                    child:
                        Text(
                          "Подходы:",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                  ),
                  SizedBox(
                    height: 150,
                    width: 50,
                    child: ListView.builder(
                        itemCount: treningInfoAproach.length,
                        itemBuilder: (BuildContext context, int index) {
                            return Row(
                                  children: [
                                    Text("${index+1} x ", style: const TextStyle(fontSize: 17,), textAlign: TextAlign.start,),
                                    Text("${treningInfoAproach[index]}", style: const TextStyle(fontSize: 17,)),
                                  ],
                                );
                        }
                    ),
                  ),
                  const SizedBox(width:20,),
                  SizedBox(
                    child: avatar.isNotEmpty ?
                    Image.network(avatar) :
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(80),
                        child: const Image(image: AssetImage("lib/images/trenning_current.jpg"),
                          fit: BoxFit.cover,),
                      ),
                    ),

                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}