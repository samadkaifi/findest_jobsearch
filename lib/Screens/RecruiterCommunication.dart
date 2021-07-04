import 'package:findest/utilities/constant.dart';
import 'package:flutter/material.dart';
import 'ApplicationHistory.dart';

class RecruiterCommunication extends StatelessWidget {
  static const routeName = 'RecruiterCommunication';

  void goToApplicationHistory(BuildContext context) {
    Navigator.pushNamed(context, ApplicationHistory.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RECRUITER COMMUNICATION',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: deepBlue,
      ),
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        padding: EdgeInsets.all(deviceWidth * .05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: deviceWidth * .1,
                ),
                Icon(
                  Icons.android,
                  size: 60,
                ),
                SizedBox(
                  height: deviceWidth * .1,
                ),
                Text(
                  'You have not received any messages!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF231F20)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: deviceWidth * .04,
                ),
                Text(
                  'Something went wrong please try again after sometime',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.grey.shade700),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(deviceWidth * .025),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
              ),
              width: deviceWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Increase your profile views upto 3 times',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: deviceWidth * .025,
                  ),
                  Text(
                    'Get your profile marked as <Featured> and get a\nhigher rank when recruiters search for resumes  ',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade700),
                  ),
                  SizedBox(
                    height: deviceWidth * .025,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    TextButton(
                      onPressed: () {
                        goToApplicationHistory(context);
                      },
                      child: Text(
                        'KNOW MORE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade600),
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
