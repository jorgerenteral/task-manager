import 'package:flutter/material.dart';
import 'package:task_manager/styles/buttons.styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(36),
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Image.asset(
                'assets/images/home.jpg',
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Text(
                'Smart Task Management',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Text(
              'This smart tool is designed to help you better manage your tasks.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: ButtonTheme(
          child: FilledButton(
            onPressed: () => {},
            style: ButtonStyles.primaryButton(context),
            child: Text('Iniciar'.toUpperCase()),
          ),
        ),
      ),
    );
  }
}
