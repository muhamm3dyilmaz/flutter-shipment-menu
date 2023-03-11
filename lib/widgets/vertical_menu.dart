import 'package:flutter/material.dart';

import '../screens/file_screen.dart';
import '../screens/screen1.dart';
import '../screens/screen2.dart';
import '../screens/screen3.dart';
import '../screens/screen4.dart';
import '../screens/screen5.dart';
import '../screens/screen6.dart';
import '../screens/screen7.dart';
import '../screens/screen8.dart';

class VerticalMenu extends StatefulWidget {
  const VerticalMenu({super.key});

  @override
  State<VerticalMenu> createState() => _VerticalMenuState();
}

class _VerticalMenuState extends State<VerticalMenu> {
  int selectedVerticalIndex = 3;
  List<Widget> verticalPages = const [
    ScreenOne(),
    ScreenTwo(),
    ScreenThree(),
    FileScreen(),
    ScreenFour(),
    ScreenFive(),
    ScreenSix(),
    ScreenSeven(),
    ScreenEight(),
  ];

  void selectVerticalPage(int index) {
    setState(() {
      selectedVerticalIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.whatshot,
          size: 40,
          color: Colors.orange,
        ),
        title: const Text(
          "Sales orders",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        actions: [
          Row(
            children: [
              Container(
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromARGB(255, 207, 207, 207),
                  ),
                ),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SizedBox(width: 5),
                    const Icon(Icons.search, color: Colors.grey),
                    const Text(
                      "Search",
                      style: TextStyle(
                        color: Color.fromARGB(255, 210, 210, 210),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 214, 214, 214),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              'All',
                              style: TextStyle(color: Colors.black),
                            ),
                            const Icon(Icons.arrow_drop_down,
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.support,
                color: Color.fromARGB(255, 188, 188, 188),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.notifications,
                color: Color.fromARGB(255, 188, 188, 188),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ],
      ),
      body: Stack(
        children: [
          verticalPages[selectedVerticalIndex],
          Row(
            children: [
              NavigationRail(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                onDestinationSelected: selectVerticalPage,
                selectedIndex: selectedVerticalIndex,
                destinations: const <NavigationRailDestination>[
                  NavigationRailDestination(
                    icon: Icon(Icons.pie_chart_outline, size: 20),
                    selectedIcon: Icon(Icons.pie_chart, size: 20),
                    label: Text(''),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.groups_outlined, size: 20),
                    selectedIcon: Icon(Icons.groups_rounded, size: 20),
                    label: Text(''),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.folder_open, size: 20),
                    selectedIcon: Icon(Icons.folder, size: 20),
                    label: Text(''),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.file_copy_outlined, size: 20),
                    selectedIcon: Icon(Icons.file_copy, size: 20),
                    label: Text(''),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.square_outlined, size: 20),
                    selectedIcon: Icon(Icons.square_sharp, size: 20),
                    label: Text(''),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.shopping_bag_outlined, size: 20),
                    selectedIcon: Icon(Icons.shopping_bag, size: 20),
                    label: Text(''),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.receipt_outlined, size: 20),
                    selectedIcon: Icon(Icons.receipt, size: 20),
                    label: Text(''),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.settings_applications_outlined, size: 20),
                    selectedIcon: Icon(Icons.settings_applications, size: 20),
                    label: Text(''),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.power_outlined, size: 20),
                    selectedIcon: Icon(Icons.power, size: 20),
                    label: Text(''),
                  ),
                ],
                selectedIconTheme:
                    const IconThemeData(color: Color.fromARGB(255, 1, 33, 193)),
                unselectedIconTheme: const IconThemeData(
                    color: Color.fromARGB(255, 131, 131, 131)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
