import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Beautiful Flutter TextBox',
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 30,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: Colors.yellow,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: CircleAvatar(
                radius: 25,
                //backgroundColor: Colors.white,
                child: Icon(
                  FontAwesomeIcons.google,
                  //color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
