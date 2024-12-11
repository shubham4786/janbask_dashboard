import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {'icon': Icons.home, 'title': 'Dashboard', 'color': Colors.red},
      {'icon': Icons.person, 'title': 'Profile', 'color': Colors.green},
      {
        'icon': Icons.calendar_month_rounded,
        'title': 'Enrolled Classes',
        'color': Colors.blue
      },
      {
        'icon': Icons.not_started,
        'title': 'Free Material',
        'color': Colors.orange
      },
      {'icon': Icons.report, 'title': 'Reports', 'color': Colors.purple},
      {'icon': Icons.support, 'title': 'Quick Support', 'color': Colors.cyan},
      {'icon': Icons.history, 'title': 'Order History', 'color': Colors.brown},
      {'icon': Icons.padding, 'title': 'Refund Policy', 'color': Colors.brown},
    ];
    return Container(
      color: const Color.fromARGB(255, 236, 242, 247),
      width: 240,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            CircleAvatar(
              radius: 60,
              child: Icon(
                Icons.person_outline_sharp,
                size: 120,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Welcome,",
                style: TextStyle(
                  color: Color.fromARGB(255, 43, 41, 41),
                  fontSize: 12,
                ),
              ),
            ),
            Center(
              child: Text(
                "Shubham Bhanarkar",
                style: TextStyle(
                  color: Color.fromARGB(255, 27, 26, 26),
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: ListTile(
                    leading: Icon(
                      menuItems[index]['icon'],
                      color: menuItems[index]['color'],
                    ),
                    title: Text(
                      menuItems[index]['title'],
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
