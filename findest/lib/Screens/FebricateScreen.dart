import 'package:flutter/material.dart';
import '../utilities/constant.dart';
import './EducationDetailScreen.dart';

class FebricateScreen extends StatelessWidget {
  static const routeName = "Febricate";

  void goToEducationalDetailScreen(BuildContext context) {
    Navigator.of(context).pushNamed(EducationalDetailScreen.routeName);
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
                alignment: Alignment.center,
                child: Text(
                  "LET'S FABRICATE YOUR PROFILE",
                  style: TextStyle(
                      color: kGrey, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: deviceWidth * .1,
              ),
              Container(
                width: deviceWidth,
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: kGrey, width: 2),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: deviceWidth * .025,
                    ),
                    Container(
                      width: deviceWidth,
                      child: Text(
                        "STUDENTS/NEVER WORKED BEFORE",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: kGrey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: deviceWidth * .0125,
                    ),
                    Container(
                      width: deviceWidth,
                      child: Text(
                        "i.e Fresh Graduates, Graduate having\nno work",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: deviceWidth * .05,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .1,
              ),
              Container(
                width: deviceWidth,
                decoration: BoxDecoration(
                  color: deepBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(deviceWidth * .025),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: deviceWidth * .025,
                    ),
                    Container(
                      width: deviceWidth,
                      child: Text(
                        "WORKED/HAVE WORKED BEFORE",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: kWhite,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: deviceWidth * .025,
                    ),
                    Container(
                      width: deviceWidth,
                      child: Text(
                        "i.e Working/worked in an organization,\nagency, company or business.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: deviceWidth * .05,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .075,
              ),
              Container(
                width: deviceWidth,
                child: Text(
                  "CURRENT CITY",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: deviceWidth * .075,
              ),
              TextFormField(
                cursorColor: kGrey,
                style: TextStyle(
                    color: kGrey, fontSize: 16, fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  hintText: "ENTER CITY NAME",
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
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
                height: deviceWidth * .1,
              ),
              InkWell(
                onTap: () {
                 goToEducationalDetailScreen(context);
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
