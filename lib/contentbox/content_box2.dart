import 'package:flutter/material.dart';
import 'package:websites/text_shadermask.dart';

class ContentBox2 extends StatefulWidget {
  const ContentBox2({Key? key}) : super(key: key);

  @override
  _ContentBox2State createState() => _ContentBox2State();
}

class _ContentBox2State extends State<ContentBox2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextShadermask(
            Text: 'Crypto Trading',
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontFamily: 'Poppins ,sans-serif',
                height: 1.5,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 40,
              ),
              children: [
                TextSpan(
                  text: 'Ride you want, The best way to get\n',
                ),
                TextSpan(
                  text: 'wherever you are going',
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontFamily: 'Poppins ,sans-serif',
                height: 1.5,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 20,
              ),
              children: [
                TextSpan(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at dictum\n',
                ),
                TextSpan(
                  text:
                      'risus, non suscipit arcu. Quisque aliquam posuere tortor, sit amet\n',
                ),
                TextSpan(
                  text: 'convallis nunc scelerisque in.\n',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
