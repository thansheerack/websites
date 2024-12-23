import 'package:flutter/material.dart';

class CheckboxCont extends StatefulWidget {
  const CheckboxCont({Key? key, required this.Text}) : super(key: key);

  final String Text;

  @override
  _CheckboxContState createState() => _CheckboxContState();
}

class _CheckboxContState extends State<CheckboxCont> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Transform.scale(
            scale: 2,
            child: Checkbox(
              value: true,
              onChanged: (value) {
                setState(() {
                  value = true;
                });
              },
              activeColor: Colors.grey.shade900,
            ),
          ),
          SizedBox(width: 10),
          Text(
            widget.Text,
            style: TextStyle(
                color: Colors.grey.shade900,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
