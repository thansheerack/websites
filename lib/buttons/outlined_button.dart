import 'dart:ui';

import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatefulWidget {
  const CustomOutlinedButton({Key? key, required this.Text}) : super(key: key);

  final String Text;

  @override
  _CustomOutlinedButtonState createState() => _CustomOutlinedButtonState();
}

class _CustomOutlinedButtonState extends State<CustomOutlinedButton> {
  late LinearGradient gradient; // Define 'gradient'

  @override
  void initState() {
    super.initState();
    gradient = LinearGradient(
      colors: [
        Color.fromARGB(255, 108, 107, 107),
        Colors.grey.shade800,
        Colors.grey.shade900,
        Colors.black,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          gradient = LinearGradient(
            colors: [
              Colors.black,
              Colors.grey.shade900,
              Colors.grey.shade800,
              Color.fromARGB(255, 108, 107, 107),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          );
        });
      },
      onExit: (event) {
        setState(() {
          gradient = LinearGradient(
            colors: [
              Color.fromARGB(255, 108, 107, 107),
              Colors.grey.shade800,
              Colors.grey.shade900,
              Colors.black,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          );
        });
      },
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: gradient, // Use 'gradient'
        ),
        child: OutlinedButton(
          onPressed: () {},
          child: Text(
            widget.Text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
