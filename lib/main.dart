//import 'dart:html';
import 'package:web/data.dart';
import 'package:web/widgets/Card.dart';
import 'package:web/widgets/expense.dart';
import './widgets/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Debit card manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        color: const Color(0x26234395),
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              height: 120,
              child: Header(),
            ),
            Expanded(
                child: Container(
              child: Cards(),
            )),
            Expanded(child: Expense())
          ],
        ),
      ),
    );
  }
}
