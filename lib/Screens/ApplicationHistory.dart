import '../utilities/constant.dart';
import 'package:flutter/material.dart';

class ApplicationHistory extends StatelessWidget {
  static const routeName = 'ApplicationHistory';

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('APPLICATION HISTORY'),
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
                'You have not applied to\nany jobs in the last 60 days.',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF231F20)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: deviceWidth * .25,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: deviceWidth * .035,
                      horizontal: deviceWidth * .15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kGrey,
                  ),
                  child: Text('START APPLYING',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 19,
                          color: Colors.white,
                          letterSpacing: 2)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
