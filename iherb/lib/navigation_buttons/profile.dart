import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Row(
        children: [Text('Name: Laxmikant Nishad'), Text("Age: 20")],
      ),
    );
  }
}
