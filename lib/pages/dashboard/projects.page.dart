import 'package:flutter/material.dart';

class DashboardProjectsPage extends StatefulWidget {
  const DashboardProjectsPage({super.key, required this.title});
  final String title;

  @override
  State<DashboardProjectsPage> createState() => _DashboardProjectsPageState();
}

class _DashboardProjectsPageState extends State<DashboardProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(36),
        alignment: Alignment.centerLeft,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[],
        ),
      ),
    );
  }
}
