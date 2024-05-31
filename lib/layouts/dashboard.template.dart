// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:task_manager/components/dashboard-home-app-bar.component.dart';
import 'package:task_manager/components/default-app-bar.component.dart';
import 'package:task_manager/constants/colors.constants.dart';
import 'package:task_manager/pages/dashboard/home.page.dart';
import 'package:task_manager/pages/dashboard/projects.page.dart';

class DashboardTemplate extends StatefulWidget {
  Widget child;
  dynamic appBar;

  DashboardTemplate({
    super.key,
    required this.child,
    this.appBar,
  });

  @override
  State<DashboardTemplate> createState() => _DashboardTemplateState();
}

class _DashboardTemplateState extends State<DashboardTemplate> {
  int currentIndex = 0;

  static List<Widget> pages = <Widget>[
    const DashboardHomePage(title: 'Home'),
    const DashboardHomePage(title: 'Home'),
    const DashboardProjectsPage(title: 'Projects')
  ];

  static List<AppBar> appBars = <AppBar>[
    dashboardHomeAppBarComponent(),
    defaultAppBarComponent('Projects'),
  ];

  void onNavItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.pageBg,
      appBar: currentIndex == 0 ? appBars.elementAt(0) : appBars.elementAt(1),
      body: pages.elementAt(currentIndex),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: ColorConstants.primary,
          onTap: onNavItemTapped,
          backgroundColor: ColorConstants.light,
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.list_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: ColorConstants.primary,
                  shape: BoxShape.circle, // Forma redonda
                ),
                child: const Icon(Icons.add,
                    color: Colors.white), // Icono del botón
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.file_copy_outlined),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
