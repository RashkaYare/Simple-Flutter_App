import 'package:flutter/material.dart';
import 'package:flutter_app/class/item_class.dart';
import 'package:flutter_app/widget/card_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rashka'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Cardwidget(
              box: ItemClass(
                title: "rocket",
                imagepath: 'images/rocket.png',
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Cardwidget(
                    box: ItemClass(
                      title: "Travel",
                      imagepath: 'images/travel.png',
                    ),
                  ),
                ),
                Expanded(
                  child: Cardwidget(
                    box: ItemClass(
                      title: "Space",
                      imagepath: 'images/space.png',
                    ),
                  ),
                )
              ],
            ),
            Cardwidget(
              box: ItemClass(
                title: "Yeah",
                imagepath: 'images/yeah.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
