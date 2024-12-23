import 'package:flutter/material.dart';

class AppbarButton extends StatefulWidget {
  const AppbarButton({Key? key, required this.textColor}) : super(key: key);

  final Color textColor;

  @override
  _AppbarButtonState createState() => _AppbarButtonState();
}

class _AppbarButtonState extends State<AppbarButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 300),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Home',
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'About Us',
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Services',
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'FAQ',
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Roadmap',
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Contact',
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Container(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
                backgroundColor: Colors.grey.shade900,
              ),
              onPressed: () {},
              child: Text(
                'Contact Us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
