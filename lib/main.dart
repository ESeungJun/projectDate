import 'package:flutter/material.dart';
import 'package:project_date/providers/count_provider.dart';
import 'package:project_date/screen/home/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => CountProvider())
        ],
      child: MaterialApp(
        title: 'test app',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          visualDensity: VisualDensity.adaptivePlatformDensity
        ),
        home: const MyHomePage(title: 'test home'),
      ),
    );
  }
}


