import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/profile_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int cureentpage = 0;
  List<Widget> pages = [Homepage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(cureentpage),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedIndex: cureentpage,
        onDestinationSelected: (int value) {
          setState(() {
            cureentpage = value;
          });
        },
      ),
    );
  }
}
