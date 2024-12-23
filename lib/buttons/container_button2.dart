import 'package:flutter/material.dart';
import 'package:websites/icons/icon_model.dart';

class ContainerButton2 extends StatefulWidget {
  const ContainerButton2({
    Key? key,
    required this.child,
    required this.Title,
    required this.Text,
  }) : super(key: key);

  final Widget child;

  final String Title;
  final String Text;

  @override
  _ContainerButton2State createState() => _ContainerButton2State();
}

class _ContainerButton2State extends State<ContainerButton2> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        color: Colors.grey.shade900,
        height: 80,
        width: 550,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20),
              child: widget.child,
            ),
            SizedBox(width: 30),
            Container(
              padding: EdgeInsets.only(top: 10),
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
                          text: widget.Text,
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
