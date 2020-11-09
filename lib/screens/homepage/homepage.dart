import 'package:flutter/material.dart';
import 'components/body.dart';
import 'components/main_body.dart';
import 'components/top_container.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          TopContainer(),
          Body(),
          MainBody(),
        ],
      ),
    ));
  }
}
