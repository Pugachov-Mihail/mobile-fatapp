import 'package:flutter/material.dart';
import 'package:mobile_app/pages/trenning_current_page.dart';

import '../api/models/trenning_models.dart';
import '../modules/menu/trenning_ui.dart';

class TrenningListPage extends StatelessWidget {
  TrenningListPage({super.key});

  List<MainPageTrenning> trenningList = [
    MainPageTrenning("Заголовок",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "https://images.wallpaperscraft.com/image/single/lake_mountain_tree_36589_2650x1600.jpg",
        Trener("Подзалупный", "Иван"),
        5,
        [TrenningInfo("Жим лежа", "", [10, 8, 7, 8, 5, 4]),TrenningInfo("Жим ногами", "", [10, 8, 7]), TrenningInfo("Жим ногами 2", "", [10, 8, 7])],
    ),
    MainPageTrenning("Заголовок 2",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "https://images.wallpaperscraft.com/image/single/lake_mountain_tree_36589_2650x1600.jpg",
        Trener("Подзалупный", "Иван"),
        5,
      [TrenningInfo("Жим ногами", "", [10, 8, 7])],
    ),
    MainPageTrenning("Заголовок 3",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "https://images.wallpaperscraft.com/image/single/lake_mountain_tree_36589_2650x1600.jpg",
        Trener("Подзалупный", "Иван"),
        5,
      [TrenningInfo("Становая тяга", "", [10, 8, 7])],
    ),
    MainPageTrenning("Заголовок 4",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "https://images.wallpaperscraft.com/image/single/lake_mountain_tree_36589_2650x1600.jpg",
        Trener("Подзалупный", "Иван"),
        5,
     [TrenningInfo("Становая тяга", "", [10, 8, 7])],
    ),
    MainPageTrenning("Заголовок 5",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "https://images.wallpaperscraft.com/image/single/lake_mountain_tree_36589_2650x1600.jpg",
        Trener("Подзалупный", "Иван"),
        5,
      [TrenningInfo("Становая тяга", "", [10, 8, 7])],
    ),
    MainPageTrenning("Заголовок 6",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "https://images.wallpaperscraft.com/image/single/lake_mountain_tree_36589_2650x1600.jpg",
        Trener("Подзалупный", "Иван"),
        5,
      [TrenningInfo("Становая тяга", "", [10, 8, 7])],
    ),
  ];


  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("lib/images/trenning_menu.jpg"), fit: BoxFit.cover, opacity: 0.5),
      ),
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: trenningList.isNotEmpty ? ListView.builder(
          itemCount: trenningList.length,
          itemBuilder: (BuildContext context, int index) {
              return  GestureDetector(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context)=>TrenningCurrentPage(
                        trenning: trenningList[index],
                      ))
                  );
                },
                child: TrenningWidget(
                    title: trenningList[index].title,
                    image: trenningList[index].image,
                    trenerName: trenningList[index].trenerInfo,
                    raiting: trenningList[index].raiting,
                    descriptions: trenningList[index].description,
                ),
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
                ),
        )
    );
  }
}