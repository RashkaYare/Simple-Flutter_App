import 'package:flutter/material.dart';
import 'package:flutter_app/class/item_class.dart';
import 'package:flutter_app/cons/constant.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({
    super.key,
    required this.box,
  });

  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontsizecustom = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        automaticallyImplyLeading: true,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(Icons.dangerous),
        // ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("snack"),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(widget.box.imagepath),
              Wrap(
                spacing: 10.0,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontsizecustom = 25;
                      });
                    },
                    child: Text('Small'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontsizecustom = 50;
                      });
                    },
                    child: Text('Normal'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontsizecustom = 100;
                      });
                    },
                    child: Text('Large'),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                    fontSize: fontsizecustom,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                becon,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
