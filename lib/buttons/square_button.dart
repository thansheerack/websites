import 'dart:ui';

import 'package:flutter/material.dart';

class CustomSquaredButton extends StatefulWidget {
  const CustomSquaredButton({Key? key, required this.Text}) : super(key: key);

  final String Text;

  @override
  _CustomSquaredButtonState createState() => _CustomSquaredButtonState();
}

class _CustomSquaredButtonState extends State<CustomSquaredButton> {
  late LinearGradient gradient; // Define 'gradient'

  @override
  void initState() {
    super.initState();
    gradient = LinearGradient(
      colors: [
        Color.fromARGB(255, 240, 190, 40),
        Color.fromARGB(255, 240, 143, 40),
        Color.fromARGB(255, 240, 93, 40),
        Color.fromARGB(255, 240, 60, 40),
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
              Color.fromARGB(255, 240, 60, 40),
              Color.fromARGB(255, 240, 93, 40),
              Color.fromARGB(255, 240, 143, 40),
              Color.fromARGB(255, 240, 190, 40),
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
              Color.fromARGB(255, 240, 190, 40),
              Color.fromARGB(255, 240, 143, 40),
              Color.fromARGB(255, 240, 93, 40),
              Color.fromARGB(255, 240, 60, 40),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          );
        });
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          gradient: gradient, // Use 'gradient'
        ),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
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
