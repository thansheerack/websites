import 'package:flutter/material.dart';

class TextShadermask extends StatefulWidget {
  const TextShadermask({Key? key, required this.Text}) : super(key: key);

  final String Text;

  @override
  _TextShadermaskState createState() => _TextShadermaskState();
}

class _TextShadermaskState extends State<TextShadermask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ShaderMask(
        shaderCallback: (bounds) => LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(255, 166, 61, 65),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(bounds),
        child: Text(
          widget.Text,
          style: TextStyle(
            fontFamily: 'Poppins ,sans-serif',
            height: 1.5,
            fontWeight: FontWeight.w400,
            color: Colors.white, // This color will be covered by the gradient
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
