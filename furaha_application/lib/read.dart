import 'package:flutter/material.dart';
import 'package:furaha_application/variables.dart';

class ReadScreen extends StatefulWidget {
  @override
  _ReadScreenState createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Read Our Content")),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Welcome to our Readings Section',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: kBlueColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
