import 'package:flutter/material.dart';
import '../utilities/constant.dart';
import './WorkExpScreen.dart';

class KeySkillScreen extends StatelessWidget {
  static const routeName = "KeySkill";

  void goToWorkExpScreen(BuildContext context) {
    Navigator.of(context).pushNamed(WorkExpScreen.routeName);
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
                  "KEY SKILLS",
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
                  "TYPE YOUR SKILLS",
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
                height: deviceWidth * .05,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: deviceWidth * .025,
                    vertical: deviceWidth * .05),
                width: deviceWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kLBlue.withOpacity(.8)),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: deepBlue,
                      child: Center(
                        child: Text(
                          "!",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * .025,
                    ),
                    Container(
                      width: deviceWidth * .7,
                      child: Text(
                        "Avoid typing keywords such as hardworking, honesty, good writing skills",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: kGrey.withOpacity(.7),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .4,
              ),
              InkWell(
                onTap: () {
                  goToWorkExpScreen(context);
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
