import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreditScreen extends StatefulWidget {
  CreditScreen({Key key}) : super(key: key);

  @override
  _CreditScreenState createState() => _CreditScreenState();
}

class _CreditScreenState extends State<CreditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Credit"),
      ),
      body: Center(
        child: Text ("Credit Screen"),
      )
    );
  }
}