import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      bottomNavigationBar: BottomTabMenu(),
      body: const TabBarView(
        children: [
          Icon(Icons.directions_car),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
          Icon(Icons.directions_bike)
        ],
      )
    );
  }

  Widget BottomTabMenu() {
    return Container(
        color: Colors.deepPurple,
        child: const TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white12,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.all(5.0),
          tabs: [
            Tab(
              text: "1",
              icon: Icon(Icons.euro_symbol),
            ),
            Tab(
              text: "2",
              icon: Icon(Icons.assignment),
            ),
            Tab(
              text: "3",
              icon: Icon(Icons.account_balance_wallet),
            ),
            Tab(
              text: "4",
              icon: Icon(Icons.settings),
            ),
          ],
        ));
  }
}
