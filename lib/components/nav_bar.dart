import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonNavBar extends StatefulWidget {
  Function(int)? onTabTapped;
  int currentIndex;

  ButtonNavBar({super.key, required this.onTabTapped, required this.currentIndex});

  @override
  State<ButtonNavBar> createState() => _ButtonNavBarState();
}

class _ButtonNavBarState extends State<ButtonNavBar> {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap:  widget.onTabTapped,
        currentIndex: widget.currentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset("lib/icons/dumbbell.svg", width: 30, height: 30, color: Colors.deepPurple,),
            icon: SvgPicture.asset("lib/icons/dumbbell.svg", width: 30, height: 30,),
            label: "Программы",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset("lib/icons/sport.svg", width: 30, height: 30, color: Colors.deepPurple,),
            icon: SvgPicture.asset("lib/icons/sport.svg", width: 30, height: 30,),
            label: "Тренировки",
          ),
          BottomNavigationBarItem(
              activeIcon: SvgPicture.asset("lib/icons/person.svg", width: 30, height: 30, color: Colors.deepPurple,),
              icon: SvgPicture.asset("lib/icons/person.svg", width: 30, height: 30,),
              label: "Профиль"
          ),
      ]);
  }
}