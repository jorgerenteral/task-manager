import 'package:flutter/material.dart';
import 'package:task_manager/components/dashboard/home/summary_component.dart';
import 'package:task_manager/components/dashboard/home/title_component.dart';

class DashboardHomePage extends StatefulWidget {
  const DashboardHomePage({super.key, required this.title});
  final String title;

  @override
  State<DashboardHomePage> createState() => _DashboardHomePageState();
}

class _DashboardHomePageState extends State<DashboardHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.centerLeft,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TitleComponent(),
            SummaryComponent(),
          ],
        ),
      ),
    );
  }
}
