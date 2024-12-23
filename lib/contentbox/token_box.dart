import 'package:flutter/material.dart';

class TokenBox extends StatefulWidget {
  const TokenBox({
    Key? key,
    required this.Text1,
    required this.Text2,
    required this.color,
  }) : super(key: key);

  final String Text1;
  final String Text2;
  final Color color;

  @override
  _TokenBoxState createState() => _TokenBoxState();
}

class _TokenBoxState extends State<TokenBox> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 30, top: 3),
          height: 50,
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Text(
                widget.Text1,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(width: 10),
              Text(
                widget.Text2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          child: Container(
            width: 15,
            height: 55,
            color: widget.color,
          ),
          left: 1,
        ),
      ],
    );
  }
}
