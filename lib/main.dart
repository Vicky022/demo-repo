import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Refer & Earn',
      home: MyHomePage(title: 'Refer & Earn'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String inputCoupon = 'TYE367HH';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Refer & Earn",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Invite your friends & get Rs.100 each',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 40),
                Column(
                  children: <Widget>[
                    Text('•' +
                        'Share the code below or ask them to enter it when the Sign up'),
                    SizedBox(height: 10),
                    Text('•' +
                        ' You will get instant cash as soon as your friend register successfully'),
                    SizedBox(height: 10),
                    Text('•' +
                        'Cash can be used on all the medical procedures, appointments & tests'),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  child: Image.asset('assest/images/couponimg.png'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Available Credits',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        SizedBox(width: 20),
                        Text(
                          '250',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 35),
                    Text(
                      'Share your Invite Code',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SelectableText.rich(
                      TextSpan(
                        text: inputCoupon,
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        final data = ClipboardData(text: inputCoupon);
                        Clipboard.setData(data);
                      },
                      splashColor: Colors.greenAccent,
                      child: Text(
                        'Copy Code',
                        style: TextStyle(color: Colors.greenAccent[400]),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    color: Colors.greenAccent[400],
                    splashColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    elevation: 5,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text(
                      'Invite Friend',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
