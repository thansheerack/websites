import 'package:flutter/material.dart';
import 'package:websites/buttons/outlined_button.dart';
import 'package:websites/text_shadermask.dart';

class ContentBox3 extends StatefulWidget {
  const ContentBox3({Key? key}) : super(key: key);

  @override
  _ContentBox3State createState() => _ContentBox3State();
}

class _ContentBox3State extends State<ContentBox3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextShadermask(
          Text: 'Smart Contract',
        ),
        SizedBox(height: 10),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Trade crypto currency and refer\n',
                style: TextStyle(
                  fontFamily: 'Poppins ,sans-serif',
                  height: 1.2,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              TextSpan(
                text: 'new members to get bounes.\n',
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
                text: 'reprehenderit incidunt iusto laboriosam.',
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
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at dictum\n',
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
                'risus, non suscipit arcu. Quisque aliquam posuere tortor, sit amet\n',
            style: TextStyle(
              fontFamily: 'Poppins ,sans-serif',
              height: 1.5,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          TextSpan(
            text: 'convallis nunc scelerisque in.\n',
            style: TextStyle(
              fontFamily: 'Poppins ,sans-serif',
              height: 1.5,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ])),
        SizedBox(height: 10),
        CustomOutlinedButton(
          Text: 'READ MORE',
        ),
      ]),
    );
  }
}
