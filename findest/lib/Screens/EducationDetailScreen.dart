import 'package:flutter/material.dart';
import '../utilities/constant.dart';
import './KeySkillScreen.dart';

class EducationalDetailScreen extends StatelessWidget {
  static const routeName = "EducatioanlDetail";

  void goToKeySkillScreen(BuildContext context) {
    Navigator.of(context).pushNamed(KeySkillScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kWhite,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: deviceWidth * .05),
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: deviceWidth,
                child: Text(
                  "EDUCATION DETAILS",
                  style: TextStyle(
                      color: kGrey, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: deviceWidth * .025,
              ),
              Container(
                width: deviceWidth,
                child: Text(
                  "SELECT YOUR HIGHEST QUALITIES",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: deviceWidth * .1,
              ),
              Container(
                width: deviceWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: deviceWidth * .425,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: kGrey, width: 1.5)),
                      // padding: EdgeInsets.all(deviceWidth * .025),
                      child: Center(
                          child: Text(
                        "PhD/Doctrate",
                        style: TextStyle(
                            color: deepBlue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    Container(
                      width: deviceWidth * .425,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: kGrey, width: 1.5)),
                      // padding: EdgeInsets.all(deviceWidth * .025),
                      child: Center(
                          child: Text(
                        "Post Graduate",
                        style: TextStyle(
                            color: deepBlue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .05,
              ),
              Container(
                width: deviceWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: deviceWidth * .425,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: deepBlue, width: 1.5),
                      ),
                      child: Center(
                          child: Text(
                        "Graduate/DIP",
                        style: TextStyle(
                            color: deepBlue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    Container(
                      width: deviceWidth * .425,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: kGrey, width: 1.5)),
                      // padding: EdgeInsets.all(deviceWidth * .025),
                      child: Center(
                          child: Text(
                        "Class XII",
                        style: TextStyle(
                            color: deepBlue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .05,
              ),
              Container(
                width: deviceWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: deviceWidth * .425,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: kGrey, width: 1.5)),
                      // padding: EdgeInsets.all(deviceWidth * .025),
                      child: Center(
                          child: Text(
                        "Below Class X",
                        style: TextStyle(
                            color: deepBlue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    Container(
                      width: deviceWidth * .425,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: kGrey, width: 1.5)),
                      // padding: EdgeInsets.all(deviceWidth * .025),
                      child: Center(
                          child: Text(
                        "Class X",
                        style: TextStyle(
                            color: deepBlue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .3,
              ),
              InkWell(
                onTap: () {
                  goToKeySkillScreen(context);
                },
                child: Container(
                  height: 50,
                  width: deviceWidth * 0.8,
                  decoration: BoxDecoration(
                    color: kGrey,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: Color(0XFF405866),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: kWhite,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: deviceWidth * .5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
