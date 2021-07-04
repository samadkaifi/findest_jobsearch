import 'package:flutter/material.dart';
import '../utilities/constant.dart';

class FilterJobScreen extends StatelessWidget {
  static const routeName = "FilterJob";
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: deepBlue,
        title: Text(
          "FILTER YOUR JOBS",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        actions: [
          Column(
            children: [
              SizedBox(height: deviceWidth * .04),
              Container(
                width: deviceWidth * .15,
                height: 30,
                decoration: BoxDecoration(
                    color: kWhite, borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Icon(Icons.search, color: deepBlue, size: 20),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(deviceWidth * .05),
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: deviceWidth,
                child: Text(
                  "Looking to hire faster and\nmore affordably?",
                  style: TextStyle(
                      color: deepBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: deviceWidth * .025,
              ),
              Container(
                width: deviceWidth,
                child: Text(
                  "Tackle your next project with us -\nthe top freelancing website.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: deviceWidth * .1,
              ),
              Container(
                width: deviceWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(deviceWidth * .025),
                child: Row(
                  children: [
                    Container(
                      width: deviceWidth * .2,
                      height: 75,
                      child: Image.asset("images/W.png"),
                    ),
                    Container(
                      width: deviceWidth * .6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "SaaS Homepage redesign and\nonboarding updates",
                              style: TextStyle(
                                  color: deepBlue,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: deviceWidth * .025,
                          ),
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "UV/UI Design",
                              style: TextStyle(
                                  color: kGrey.withOpacity(.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "Posted 27 minutes ago",
                              style: TextStyle(
                                  color: kGrey.withOpacity(.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .05,
              ),
              Container(
                width: deviceWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(deviceWidth * .025),
                child: Row(
                  children: [
                    Container(
                      width: deviceWidth * .2,
                      height: 50,
                      child: Image.asset("images/l.png",),
                    ),
                    Container(
                      width: deviceWidth * .6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "Web/app designer require to create web apps",
                              style: TextStyle(
                                  color: deepBlue,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: deviceWidth * .025,
                          ),
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "Frontend Development",
                              style: TextStyle(
                                  color: kGrey.withOpacity(.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "Posted 27 minutes ago",
                              style: TextStyle(
                                  color: kGrey.withOpacity(.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .05,
              ),
              Container(
                width: deviceWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(deviceWidth * .025),
                child: Row(
                  children: [
                    Container(
                      width: deviceWidth * .2,
                      height: 50,
                      child: Image.asset("images/c.png"),
                    ),
                    Container(
                      width: deviceWidth * .6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "QT Designer",
                              style: TextStyle(
                                  color: deepBlue,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: deviceWidth * .025,
                          ),
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "Graphic Design",
                              style: TextStyle(
                                  color: kGrey.withOpacity(.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "Posted 27 minutes ago",
                              style: TextStyle(
                                  color: kGrey.withOpacity(.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
                SizedBox(
                height: deviceWidth * .05,
              ),
              Container(
                width: deviceWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(deviceWidth * .025),
                child: Row(
                  children: [
                    Container(
                      width: deviceWidth * .2,
                      height: 50,
                      child: Image.asset("images/l.png",),
                    ),
                    Container(
                      width: deviceWidth * .6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "Web/app designer require to create web apps",
                              style: TextStyle(
                                  color: deepBlue,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: deviceWidth * .025,
                          ),
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "Frontend Development",
                              style: TextStyle(
                                  color: kGrey.withOpacity(.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "Posted 27 minutes ago",
                              style: TextStyle(
                                  color: kGrey.withOpacity(.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .05,
              ),
              Container(
                width: deviceWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(deviceWidth * .025),
                child: Row(
                  children: [
                    Container(
                      width: deviceWidth * .2,
                      height: 50,
                      child: Image.asset("images/c.png"),
                    ),
                    Container(
                      width: deviceWidth * .6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "QT Designer",
                              style: TextStyle(
                                  color: deepBlue,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: deviceWidth * .025,
                          ),
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "Graphic Design",
                              style: TextStyle(
                                  color: kGrey.withOpacity(.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "Posted 27 minutes ago",
                              style: TextStyle(
                                  color: kGrey.withOpacity(.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
                SizedBox(
                height: deviceWidth * .05,
              ),
              Container(
                width: deviceWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(deviceWidth * .025),
                child: Row(
                  children: [
                    Container(
                      width: deviceWidth * .2,
                      height: 50,
                      child: Image.asset("images/l.png",),
                    ),
                    Container(
                      width: deviceWidth * .6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "Web/app designer require to create web apps",
                              style: TextStyle(
                                  color: deepBlue,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: deviceWidth * .025,
                          ),
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "Frontend Development",
                              style: TextStyle(
                                  color: kGrey.withOpacity(.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "Posted 27 minutes ago",
                              style: TextStyle(
                                  color: kGrey.withOpacity(.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .05,
              ),
              Container(
                width: deviceWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(deviceWidth * .025),
                child: Row(
                  children: [
                    Container(
                      width: deviceWidth * .2,
                      height: 50,
                      child: Image.asset("images/c.png"),
                    ),
                    Container(
                      width: deviceWidth * .6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "QT Designer",
                              style: TextStyle(
                                  color: deepBlue,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: deviceWidth * .025,
                          ),
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "Graphic Design",
                              style: TextStyle(
                                  color: kGrey.withOpacity(.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            width: deviceWidth,
                            child: Text(
                              "Posted 27 minutes ago",
                              style: TextStyle(
                                  color: kGrey.withOpacity(.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
