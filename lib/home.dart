import 'package:flutter/material.dart';
import 'package:websites/appbar.dart';
import 'package:websites/appbar_transparent.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AppbarTransparent(),
      ),
    );
  }
}
