import 'package:flutter/material.dart';
import '../utilities/constant.dart';
import './DrawerScreen.dart';
import './FilterJobScreen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "Home";
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void goToFilterScreen(BuildContext context) {
    Navigator.of(context).pushNamed(FilterJobScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      color: deepBlue,
      child: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: kWhite,
          bottomNavigationBar: BottomAppBar(
            color: kWhite,
            elevation: 0.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: deepBlue,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.navigation_outlined,
                    color: deepBlue,
                  ),
                ),
                IconButton(
                  onPressed: () => _scaffoldKey.currentState.openDrawer(),
                  icon: Icon(
                    Icons.settings_outlined,
                    color: deepBlue,
                  ),
                ),
              ],
            ),
          ),
          drawer: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5)),
              child: Drawer(child: DrawerScreen()),
            ),
          ),
          body: Stack(
            children: [
              Container(
                width: deviceWidth,
                height: deviceHeight,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(deviceWidth * .05),
                      width: deviceWidth,
                      height: deviceHeight * .3,
                      color: deepBlue,
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: deviceWidth * .6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: deviceWidth * .6,
                                        child: Text(
                                          "Zackky Johnson",
                                          style: TextStyle(
                                              color: kWhite,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      SizedBox(
                                        height: deviceWidth * .0125,
                                      ),
                                      Container(
                                        width: deviceWidth * .6,
                                        child: Text(
                                          "Student at Howard",
                                          style: TextStyle(
                                              color: kWhite.withOpacity(.9),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      SizedBox(
                                        height: deviceWidth * .0125,
                                      ),
                                      Container(
                                        width: deviceWidth * .6,
                                        child: Text(
                                          "San Francisco",
                                          style: TextStyle(
                                              color: kWhite.withOpacity(.9),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: deviceWidth * .3,
                                  child: CircleAvatar(
                                    radius: 40,
                                    backgroundColor: kWhite,
                                    child: CircleAvatar(
                                      radius: 35,
                                      backgroundImage:
                                          AssetImage("images/tony.jpeg"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: deviceWidth * .025,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: deviceWidth * .6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: deviceWidth * .6,
                                        child: Text(
                                          "80 % Profile Completed",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        width: deviceWidth * .6,
                                        alignment: Alignment.topLeft,
                                        child: SliderTheme(
                                            data: SliderThemeData(
                                                trackHeight: 2,
                                                thumbShape: SliderComponentShape
                                                    .noThumb),
                                            child: Slider(
                                                value: 80,
                                                onChanged: (value) {},
                                                min: 0,
                                                max: 100,
                                                activeColor: Colors.green,
                                                inactiveColor: kWhite)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: deviceWidth * .3,
                                  child: Text(
                                    "Last Updated Today",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        padding:
                            EdgeInsets.symmetric(horizontal: deviceWidth * .05),
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: deviceHeight * .125,
                            ),
                            Container(
                              width: deviceWidth * .8,
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: deviceWidth,
                                    child: Text(
                                      "YOUR PROFILE PERFORMANCES",
                                      style: TextStyle(
                                        color: kGrey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: deviceWidth * .025),
                                    width: deviceWidth,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: deviceWidth * .3,
                                          height: 75,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 60,
                                                child: Center(
                                                  child: Text(
                                                    "20",
                                                    style: TextStyle(
                                                      color:
                                                          kGrey.withOpacity(.8),
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 15,
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  "Profile Visits",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    color:
                                                        kGrey.withOpacity(.6),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: deviceWidth * .1,
                                          height: 75,
                                          child: Center(
                                            child: VerticalDivider(
                                              color: deepBlue,
                                              thickness: 2,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: deviceWidth * .3,
                                          height: 75,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 60,
                                                child: Center(
                                                  child: Text(
                                                    "00",
                                                    style: TextStyle(
                                                      color:
                                                          kGrey.withOpacity(.8),
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 15,
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  "Recruiter Visits",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    color:
                                                        kGrey.withOpacity(.6),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: deviceWidth * .1,
                            ),
                            Container(
                              width: deviceWidth * .8,
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
                              child: Column(
                                children: [
                                  Container(
                                    width: deviceWidth,
                                    child: RichText(
                                      // textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "02",
                                            style: TextStyle(
                                              color: kGrey.withOpacity(.8),
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "  NEW RECOMMENDED JOBS",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: kGrey.withOpacity(.6),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: deviceWidth * .025,
                                  ),
                                  Container(
                                    width: deviceWidth,
                                    child: Text(
                                      "Software Programmer Trainee - only Female",
                                      style: TextStyle(
                                        color: kGrey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    color: deepBlue,
                                    thickness: 1.5,
                                  ),
                                  Container(
                                    width: deviceWidth,
                                    child: RichText(
                                      // textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "00",
                                            style: TextStyle(
                                              color: kGrey.withOpacity(.8),
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "  SAVED JOBS",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: kGrey.withOpacity(.6),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: deviceWidth * .025,
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
                  ],
                ),
              ),
              Positioned(
                top: deviceHeight * .225,
                left: deviceWidth * .1,
                child: Container(
                  width: deviceWidth * .8,
                  height: deviceHeight * .15,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: deviceWidth,
                        child: Text(
                          "ADD PREFERED JOB",
                          style: TextStyle(
                              color: deepBlue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: deviceWidth,
                        child: Text(
                          "Add your desired job roles you would prefer to apply for",
                          style: TextStyle(
                            color: kGrey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              goToFilterScreen(context);
                            },
                            child: Container(
                              width: deviceWidth * .2,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: deepBlue,
                              ),
                              child: Center(
                                child: Text(
                                  "UPDATE",
                                  style: TextStyle(
                                    color: kWhite,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
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
