import 'package:flutter/material.dart';
import '../utilities/constant.dart';

class SearchJobScreen extends StatelessWidget {
  static const routeName = "SearchJob";
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
          "SEARCH FOR YOUR JOB",
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
                height: deviceWidth * .25,
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
                      'SEARCH',
                      style: TextStyle(
                        fontSize: 16.0,
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
