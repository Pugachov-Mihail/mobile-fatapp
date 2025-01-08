import 'package:flutter/material.dart';

import '../api/models/trenning_models.dart';
import '../modules/menu/trenning_ui.dart';

class TrenningListPage extends StatelessWidget {
  List<MainPageTrenning> trenningList = [
    MainPageTrenning("Заголовок",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "https://images.wallpaperscraft.com/image/single/lake_mountain_tree_36589_2650x1600.jpg",
        Trener("Подзалупный", "Иван"),
        5),
    MainPageTrenning("Заголовок",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "https://images.wallpaperscraft.com/image/single/lake_mountain_tree_36589_2650x1600.jpg",
        Trener("Подзалупный", "Иван"),
        5),
    MainPageTrenning("Заголовок",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "https://images.wallpaperscraft.com/image/single/lake_mountain_tree_36589_2650x1600.jpg",
        Trener("Подзалупный", "Иван"),
        5),
    MainPageTrenning("Заголовок",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "https://images.wallpaperscraft.com/image/single/lake_mountain_tree_36589_2650x1600.jpg",
        Trener("Подзалупный", "Иван"),
        5),
    MainPageTrenning("Заголовок",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "https://images.wallpaperscraft.com/image/single/lake_mountain_tree_36589_2650x1600.jpg",
        Trener("Подзалупный", "Иван"),
        5),
    MainPageTrenning("Заголовок",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "https://images.wallpaperscraft.com/image/single/lake_mountain_tree_36589_2650x1600.jpg",
        Trener("Подзалупный", "Иван"),
        5),

  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //   leading: const Icon(Icons.list,),
      //   title: const Text("Тренировки"),
      //   centerTitle: true,
      // ),
      body: trenningList.isNotEmpty ? ListView.builder(
        itemCount: trenningList.length,
        itemBuilder: (BuildContext context, int index) {
            return TrenningWidget(
                title: trenningList[index].title,
                image: trenningList[index].image,
                trenerName: trenningList[index].trenerName,
                raiting: trenningList[index].raiting,
                descriptions: trenningList[index].description,
            );
          }
      ) : Center(
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(Colors.greenAccent.shade100)
            ),
            onPressed: (){

            },
            child: const Text("Посмотреть тренировки",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54
              ),
            )
        ),
      )
    );
  }
}