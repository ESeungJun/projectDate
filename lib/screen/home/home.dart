import 'package:flutter/material.dart';
import 'package:project_date/providers/count_provider.dart';
import 'package:project_date/widgets/count_widget.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const CountWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Provider.of<CountProvider>(context, listen: false).add(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}