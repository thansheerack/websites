import 'package:flutter/material.dart';

class ContainerButton extends StatefulWidget {
  const ContainerButton({
    Key? key,
    required this.Icon,
    required this.Title,
    required this.Text1,
    required this.Text2,
  }) : super(key: key);

  final IconData Icon;
  final String Title;
  final String Text1;
  final String Text2;

  @override
  _ContainerButtonState createState() => _ContainerButtonState();
}

class _ContainerButtonState extends State<ContainerButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        color: Colors.grey.shade900,
        height: 170,
        width: 350,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Icon(
                widget.Icon,
                color: Colors.white,
                size: 60,
                shadows: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 2),
                    blurRadius: 5,
                  ),
                ],
              ),
            ),
            SizedBox(width: 30),
            Container(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.7,
                      ),
                      children: [
                        TextSpan(
                          text: widget.Title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: widget.Text1,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: widget.Text2,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
