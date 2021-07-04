import 'package:flutter/material.dart';
import '../utilities/constant.dart';

class SearchRecruiterScreen extends StatelessWidget {
  static const routeName = "SearchRecruiter";
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
          "SEARCH FOR RECRUITERS",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(deviceWidth * .05),
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: deviceWidth,
                child: Text(
                  "KEY SKILLS, DESIGNATION, COMPANIES",
                  style: TextStyle(
                      color: deepBlue,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: deviceWidth * .025,
              ),
              Container(
                width: deviceWidth,
                child: Text(
                  "TYPE YOUR SKILLS",
                  style: TextStyle(
                    color: kGrey,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: deviceWidth * .05,
              ),
              TextFormField(
                cursorColor: kGrey,
                style: TextStyle(
                    color: kGrey, fontSize: 14, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  hintText: "Eg. Sales, Marketing, BPO, Inbound, Outsource",
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(
                    color: Colors.grey,
                  )),
                  disabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(
                    color: Colors.grey,
                  )),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(
                    color: Colors.grey,
                  )),
                  border: UnderlineInputBorder(
                      borderSide: new BorderSide(
                    color: Colors.grey,
                  )),
                ),
              ),
              SizedBox(
                height: deviceWidth * .025,
              ),
              TextFormField(
                cursorColor: kGrey,
                style: TextStyle(
                    color: kGrey, fontSize: 14, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  hintText: "Location",
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(
                    color: Colors.grey,
                  )),
                  disabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(
                    color: Colors.grey,
                  )),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(
                    color: Colors.grey,
                  )),
                  border: UnderlineInputBorder(
                      borderSide: new BorderSide(
                    color: Colors.grey,
                  )),
                ),
              ),
              SizedBox(
                height: deviceWidth * .2,
              ),
              InkWell(
                onTap: () {},
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
                      'SEARCH RECRUITERS',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: kWhite,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: deviceWidth * .05,
              ),
              Container(
                width: deviceWidth,
                child: Text(
                  "RECRUITERS IN TOP COMPANIES",
                  style: TextStyle(
                      color: deepBlue,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
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
                      width: deviceWidth * .4,
                      height: deviceWidth * .4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: deepBlue)),
                      padding: EdgeInsets.all(deviceWidth * .025),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/W.png", height: deviceWidth * .1),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "WELLS FARGO",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "13 Active Recruiters",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: deviceWidth * .4,
                      height: deviceWidth * .4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: deepBlue)),
                      padding: EdgeInsets.all(deviceWidth * .025),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/l.png",
                            height: deviceWidth * .1,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "LANDOR",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "54 Active Recruiters",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          )
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: deviceWidth * .4,
                      height: deviceWidth * .4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: deepBlue)),
                      padding: EdgeInsets.all(deviceWidth * .025),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/W.png", height: deviceWidth * .1),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "WELLS FARGO",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "13 Active Recruiters",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: deviceWidth * .4,
                      height: deviceWidth * .4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: deepBlue)),
                      padding: EdgeInsets.all(deviceWidth * .025),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/c.png",
                            height: deviceWidth * .1,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "SHILLONG CO",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "54 Active Recruiters",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
