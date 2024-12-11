import 'package:flutter/material.dart';
import 'package:janbask_training/components/dashboard_card.dart';
import 'package:janbask_training/components/side_menu.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Row(
        children: [
          Menu(),
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: Column(
                children: [
                  Row(
                    children: [Text('data1')],
                  ),
                  Row(
                    children: [Text('data2')],
                  ),
                  Row(
                    children: [Text('data3')],
                  ),
                  Row(
                    children: [DashboardCard()],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
