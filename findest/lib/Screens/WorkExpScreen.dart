import 'package:flutter/material.dart';
import '../utilities/constant.dart';
import './HomeScreen.dart';

class WorkExpScreen extends StatefulWidget {
  static const routeName = "WorkExp";

  @override
  _WorkExpScreenState createState() => _WorkExpScreenState();
}

class _WorkExpScreenState extends State<WorkExpScreen> {
  String _category = "";

  void _selCategory(String value) {
    setState(() {
      _category = value;

      print(value);
    });
  }

  void goToHomeScreenScreen(BuildContext context) {
    Navigator.of(context).pushNamed(HomeScreen.routeName);
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
                  "YOUR WORK PREFERENCES",
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
                  "PREFERRED WORK LOCATION",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: deviceWidth * .05,
              ),
              Container(
                width: deviceWidth,
                child: Row(
                  children: [
                    Container(
                      width: deviceWidth * .35,
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * .025),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kLBlue.withOpacity(.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.clear,
                                size: 15,
                                color: deepBlue,
                              )
                            ],
                          ),
                          Text(
                            "Chennai",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: kGrey),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.clear,
                                size: 10,
                                color: Colors.transparent,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * .025,
                    ),
                    Container(
                      width: deviceWidth * .35,
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * .025),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kLBlue.withOpacity(.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.clear,
                                size: 15,
                                color: deepBlue,
                              )
                            ],
                          ),
                          Text(
                            "Kolkata",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: kGrey),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.clear,
                                size: 10,
                                color: Colors.transparent,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .1,
              ),
              Container(
                width: deviceWidth,
                child: Text(
                  "PREFERRED SALARY",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: deviceWidth,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: deviceWidth * .4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                            activeColor: deepBlue,
                            value: "rupee",
                            groupValue: _category,
                            onChanged: _selCategory,
                          ),
                          Text(
                            "Rupee",
                            style: TextStyle(
                                fontSize: 14,
                                color: kGrey,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: deviceWidth * .4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio(
                            activeColor: deepBlue,
                            value: "dollar",
                            groupValue: _category,
                            onChanged: _selCategory,
                          ),
                          Text(
                            "Dollar",
                            style: TextStyle(
                                fontSize: 14,
                                color: kGrey,
                                fontWeight: FontWeight.w600),
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
              Row(
                children: [
                  Container(
                    width: deviceWidth * .4,
                    child: TextFormField(
                      cursorColor: kGrey,
                      style: TextStyle(
                          color: deepBlue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        hintText: "₹ 2,00,000",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
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
                  ),
                  Container(
                    margin: EdgeInsets.only(left: deviceWidth * .025),
                    child: Text(
                      "Per Year",
                      style: TextStyle(
                          color: kGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: deviceWidth * .3,
              ),
              InkWell(
                onTap: () {
                  goToHomeScreenScreen(context);
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
