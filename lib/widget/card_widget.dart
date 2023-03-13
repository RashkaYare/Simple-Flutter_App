import 'package:flutter/material.dart';
import 'package:flutter_app/class/item_class.dart';
import 'package:flutter_app/pages/description_page.dart';

class Cardwidget extends StatelessWidget {
  const Cardwidget({
    super.key,
    required this.box,
  });

  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPage(
                box: box,
              );
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Image.asset(box.imagepath),
              Text(
                box.title,
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              Text("This is the ${box.title} description"),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
