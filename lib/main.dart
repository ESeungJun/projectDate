import 'package:flutter/material.dart';
import 'package:project_date/screen/home/home_tab.dart';

void main() {
  runApp(const DateHomeApp());
}

class DateHomeApp extends StatelessWidget {
  const DateHomeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'test app',
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const DefaultTabController(
            length: 4, child: HomeTab(title: 'test home')
        )
    );
  }
}
