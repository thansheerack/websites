import 'package:flutter/material.dart';
import 'package:websites/buttons/outlined_button.dart';
import 'package:websites/buttons/square_button.dart';
import 'package:websites/text_shadermask.dart';

class ContentBox4 extends StatefulWidget {
  const ContentBox4({Key? key}) : super(key: key);

  @override
  _ContentBox4State createState() => _ContentBox4State();
}

class _ContentBox4State extends State<ContentBox4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Downoad Our Whitepaper\n',
                style: TextStyle(
                  fontFamily: 'Poppins ,sans-serif',
                  height: 1.2,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              TextSpan(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit ipsa ut\n',
                style: TextStyle(
                  fontFamily: 'Poppins ,sans-serif',
                  height: 2,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text:
                    'quasi adipisci voluptates, voluptatibus aliquid alias beatae\n',
                style: TextStyle(
                  fontFamily: 'Poppins ,sans-serif',
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: 'reprehenderit incidunt iusto laboriosam.\n',
                style: TextStyle(
                  fontFamily: 'Poppins ,sans-serif',
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        CustomSquaredButton(
          Text: 'GET WHITEPAPER',
        ),
      ]),
    );
  }
}
