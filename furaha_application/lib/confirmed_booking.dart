import 'package:flutter/material.dart';

class ConfirmedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE1F5FE),
      appBar: AppBar(
        title: Text('Confirmed Session'),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 100, left: 10),
                  child: Image.asset(
                    'assets/calendar.png',
                    height: 110,
                    width: 110,
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 50, left: 40, right: 40),
                  child: Text(
                    'Thanks for booking with Furaha. You will receive an email with more details about your booking date and the Zoom link',
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
