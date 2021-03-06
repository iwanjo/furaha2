import 'package:flutter/material.dart';
import 'package:furaha_application/confirmed_booking.dart';
import 'package:furaha_application/therapist_home.dart';
import 'package:furaha_application/variables.dart';
import 'package:furaha_application/about_nat.dart';

class ScheduleCard extends StatelessWidget {
  var _title;
  var _description;
  var _date;
  var _month;
  var _bgColor;

  ScheduleCard(
      this._title, this._description, this._date, this._month, this._bgColor);

  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Confirm Session Booking"),
            content: Text("Session on " + _date + " " + _month),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfirmedScreen()));
                  },
                  child: Text('Yes')),
              FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text('No')),
            ],
            elevation: 24.0,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        createAlertDialog(context);
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: _bgColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListTile(
            leading: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: _bgColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    _date,
                    style: TextStyle(
                      color: _bgColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    _month,
                    style: TextStyle(
                      color: _bgColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            title: Text(
              _title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kTitleTextColor,
              ),
            ),
            subtitle: Text(
              _description,
              style: TextStyle(
                color: kTitleTextColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
