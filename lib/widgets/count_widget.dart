import 'package:flutter/material.dart';
import 'package:project_date/providers/count_provider.dart';
import 'package:provider/provider.dart';


class CountWidget extends StatelessWidget {
  const CountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<CountProvider>(
        builder: (context, value, child) => Text(
          value.count.toString(),
          style: const TextStyle(fontSize: 20),
        ),
      )
    );
  }

}