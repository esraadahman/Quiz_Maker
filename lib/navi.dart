import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_maker/screens/Home.dart';
import 'package:quiz_maker/screens/create%20quiz.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import 'color.dart';


class navie extends StatefulWidget {
  const navie({
    Key? key,
  }) : super(key: key);

  @override
  State<navie> createState() => _AnimatedBarExampleState();
}

class _AnimatedBarExampleState extends State<navie> {
  dynamic selected;
  var heart = false;
  PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, //to make floating action button notch transparent

      //to avoid the floating action button overlapping behavior,
      // when a soft keyboard is displayed
      // resizeToAvoidBottomInset: false,

      bottomNavigationBar: StylishBottomBar(
        backgroundColor: backgroundColor,
        option: AnimatedBarOptions(
          // iconSize: 32,
          // barAnimation: BarAnimation.fade,
          barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.Default,
          // opacity: 0.3,
        ),
        items: [
          BottomBarItem(
            icon: const Icon(
              Icons.house_outlined,
            ),
            selectedIcon: const Icon(Icons.house_rounded),
            backgroundColor: buttonColor,
            title: const Text('Home'),
          ),
          BottomBarItem(
              icon: const Icon(
                Icons.person_outline,
              ),
              selectedIcon: const Icon(
                Icons.person,
              ),
              selectedColor: buttonColor,
              unSelectedColor: buttonColor,
              backgroundColor: buttonColor,
              title: const Text('Profile')),
          BottomBarItem(
              icon: const Icon(
                Icons.add_circle,
              ),
              selectedIcon: const Icon(
                Icons.add_circle,
              ),
              selectedColor: buttonColor,
              unSelectedColor: buttonColor,
              backgroundColor: buttonColor,
              title: const Text('Profile')),

        ],
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: selected ?? 0,
        onTap: (index) {
          controller.jumpToPage(index);
          setState(() {
            selected = index;
          });
        },
      ),

      body: SafeArea(
        maintainBottomViewPadding: true,
        child: PageView(
          controller: controller,
          children:  [
            Home(),
            Text("profile"),
            CreateQuiz()
          ],
        ),
      ),
    );
  }
}


