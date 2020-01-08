import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:quick_bowl_challenge/models/http_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String txt = '';
  HttpModel hm = new HttpModel();
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                maxLines: 10,
                initialValue: txt,
                onChanged: (value) {
                  setState(() {
                    txt = value;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 18,
              child: RaisedButton(
                color: Colors.yellow,
                child: Text('Check'),
                onPressed: () async {
                  HttpModel.comment = txt;
                  Response res = await hm.getToxicity();
                  print(res.statusCode);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
