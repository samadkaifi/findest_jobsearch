import 'package:flutter/material.dart';
import '../utilities/constant.dart';
import './SearchJobScreen.dart';
import './SearchRecruiterScreen.dart';
import './ApplicationHistory.dart';
import './RecruiterCommunication.dart';
import './HomePage.dart';

class DrawerScreen extends StatelessWidget {
  void goToSearchJobScreen(BuildContext context) {
    Navigator.of(context).pushNamed(SearchJobScreen.routeName);
  }

  void goToSearchRecruiterScreen(BuildContext context) {
    Navigator.of(context).pushNamed(SearchRecruiterScreen.routeName);
  }

  void goToAppliactionScreen(BuildContext context) {
    Navigator.of(context).pushNamed(ApplicationHistory.routeName);
  }

  void goToSavedJobScreen(BuildContext context) {
    Navigator.of(context).pushNamed(HomePage.routeName);
  }

  void goToRecruiterCommunicationScreen(BuildContext context) {
    Navigator.of(context).pushNamed(RecruiterCommunication.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: deepBlue,
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: deviceWidth * .025, vertical: deviceWidth * .05),
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: deviceWidth,
                child: Row(
                  children: [
                    Text(
                      "SETTINGS",
                      style: TextStyle(
                          color: kWhite,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.settings_outlined,
                      color: kWhite,
                      size: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceHeight * .075,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: deviceWidth * .025),
                child: InkWell(
                  onTap: () {
                    goToSearchJobScreen(context);
                  },
                  child: Container(
                    width: deviceWidth,
                    child: Text(
                      "Search Jobs",
                      style: TextStyle(
                        color: kWhite.withOpacity(.8),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: deviceWidth * .025),
                child: InkWell(
                  onTap: () {
                    goToAppliactionScreen(context);
                  },
                  child: Container(
                    width: deviceWidth,
                    child: Text(
                      "Applied Jobs",
                      style: TextStyle(
                        color: kWhite.withOpacity(.8),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: deviceWidth * .025),
                child: InkWell(
                  onTap: () {
                    goToSavedJobScreen(context);
                  },
                  child: Container(
                    width: deviceWidth,
                    child: Text(
                      "Saved Jobs",
                      style: TextStyle(
                        color: kWhite.withOpacity(.8),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: deviceWidth * .025),
                child: InkWell(
                  onTap: () {
                    goToSearchRecruiterScreen(context);
                  },
                  child: Container(
                    width: deviceWidth,
                    child: Text(
                      "Search Recruiters",
                      style: TextStyle(
                        color: kWhite.withOpacity(.8),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: deviceWidth * .025),
                child: InkWell(
                  onTap: () {
                    goToRecruiterCommunicationScreen(context);
                  },
                  child: Container(
                    width: deviceWidth,
                    child: Text(
                      "Recruiter Communication",
                      style: TextStyle(
                        color: kWhite.withOpacity(.8),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: deviceWidth * .025),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Container(
                        // width: deviceWidth,
                        child: Text(
                          "Chat for help",
                          style: TextStyle(
                            color: kWhite.withOpacity(.8),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: deviceWidth * .15,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: kWhite)),
                        child: Center(
                          child: Text(
                            "NEW",
                            style: TextStyle(color: kWhite, fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
