import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/constants/colors.constants.dart';

import 'package:task_manager/pages/home.page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
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
      debugShowCheckedModeBanner: false,
    );
  }
}
