import 'package:flutter/material.dart';
import 'package:mobile_app/api/models/trenning_models.dart';
import 'package:mobile_app/modules/trenning/trenning_ui.dart';


class TrenningCurrentPage extends StatelessWidget {
  final MainPageTrenning trenning;

  TrenningCurrentPage({
    super.key,
    required this.trenning
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(trenning.title)),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black12,
          image: DecorationImage(
            image: NetworkImage("https://images.wallpaperscraft.com/image/single/lake_mountain_tree_36589_2650x1600.jpg",),
            fit: BoxFit.cover,
            opacity: 0.7
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  Text(
                    trenning.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                      children: [
                        Text(
                          "Программу составил: ${trenning.trenerInfo.name} ${trenning.trenerInfo.lastName}",
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ]
                  ),
                  const SizedBox(height: 7,),
                  Text(
                      trenning.description,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        color: Colors.black
                    ),
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 450,
                    child: ListView.builder(
                        itemCount: trenning.trenningInfo.length,
                        itemBuilder: (BuildContext context, int index) {
                          return TrenningUi(
                            treningInfoAproach: trenning.trenningInfo[index].approach,
                            title: trenning.trenningInfo[index].title,
                            avatar: trenning.trenningInfo[index].avatar,
                          );
                        }
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}