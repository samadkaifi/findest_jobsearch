import 'package:findest/utilities/constant.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'HomePage';
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SAVED JOBS',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: deepBlue,
      ),
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(deviceWidth * .05),
          child: Column(
            children: [
              SizedBox(
                height: deviceWidth * .1,
              ),
              Text(
                'Oops !',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              SizedBox(
                height: deviceWidth * .1,
              ),
              Text(
                'No Saved Jobs!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF231F20)),
              ),
              SizedBox(
                height: deviceWidth * .01,
              ),
              Text(
                'Tap on the start icon against a job to\n save it',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF231F20)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: deviceWidth * .25,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: deviceWidth * .035,
                    horizontal: deviceWidth * .15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF405866),
                ),
                child: Text('START SEARCHING',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 19,
                        color: Colors.white,
                        letterSpacing: 2)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
