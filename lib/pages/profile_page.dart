import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/yeah.png'),
            radius: 60,
          ),
          SizedBox(
            height: 10.0,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Rashka Yare',
            ),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text(
              'www.rashka.com',
            ),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text(
              'rashka@gmail.com',
            ),
          ),
        ],
      ),
    );
  }
}
