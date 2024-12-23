import 'package:flutter/material.dart';

class IconModel extends StatefulWidget {
  const IconModel({
    Key? key,
    required this.boxDecoration,
    required this.icon,
  }) : super(key: key);

  final BoxDecoration boxDecoration;
  final IconData icon;

  @override
  _IconModelState createState() => _IconModelState();
}

class _IconModelState extends State<IconModel> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: 70,
        decoration: widget.boxDecoration,
        child: Icon(
          widget.icon,
          color: Colors.white,
          size: 45,
        ));
  }
}
