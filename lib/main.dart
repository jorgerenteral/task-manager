import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/components/dashboard-home-app-bar.component.dart';
import 'package:task_manager/components/default-app-bar.component.dart';
import 'package:task_manager/constants/colors.constants.dart';
import 'package:task_manager/layouts/dashboard.template.dart';
import 'package:task_manager/pages/dashboard/projects.page.dart';

import 'package:task_manager/pages/home.page.dart';
import 'package:task_manager/pages/dashboard/home.page.dart';

void main() {
  runApp(const SmartTaskManagerApp());
}

class SmartTaskManagerApp extends StatelessWidget {
  const SmartTaskManagerApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Task Manager',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.varelaRound(
            fontSize: 40,
            fontWeight: FontWeight.w900,
            height: 1,
            color: ColorConstants.dark,
          ),
          bodyMedium: GoogleFonts.varelaRound(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: ColorConstants.grey,
          ),
        ),
      ),
      home: const HomePage(title: 'Smart Task Manager'),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => const HomePage(title: 'Smart Task Manager'),
            );

          case '/dashboard/home':
            return MaterialPageRoute(
              builder: (context) => DashboardTemplate(
                appBar: dashboardHomeAppBarComponent(),
                child: const DashboardHomePage(title: 'Welcome!'),
              ),
            );

          case '/dashboard/projects':
            return MaterialPageRoute(
              builder: (context) => DashboardTemplate(
                appBar: defaultAppBarComponent('Projects'),
                child: const DashboardProjectsPage(title: 'Projects'),
              ),
            );

          default:
            return MaterialPageRoute(
                builder: (context) =>
                    const HomePage(title: 'Smart Task Manager'));
        }
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
