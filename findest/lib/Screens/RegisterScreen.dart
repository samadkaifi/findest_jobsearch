import 'package:flutter/material.dart';
import '../utilities/constant.dart';
import './FebricateScreen.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = "Register";
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _fullNameFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _numberFocusNode = FocusNode();

  bool isCheck = false;

  void goToFebricateScreen(BuildContext context) {
    Navigator.of(context).pushNamed(FebricateScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kWhite,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: kGrey,
          ),
        ),
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
                  "CREATE YOUR FINDEST PEOPLE",
                  style: TextStyle(
                      color: kGrey, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: deviceWidth * .0125),
              Container(
                width: deviceWidth,
                child: Text(
                  "SEARCH FOR NO 1 JOB HUNTER!!",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: deviceWidth * .075),
                width: deviceWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: kGrey,
                      ),
                      width: 50,
                      height: 50,
                      child: Center(
                        child: Image.asset(
                          "images/google.png",
                          height: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * .2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: kGrey,
                      ),
                      width: 50,
                      height: 50,
                      child: Center(
                        child: Image.asset(
                          "images/fb.png",
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: deviceWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: deviceWidth * .35,
                      child: Divider(
                        thickness: 1.5,
                        color: kGrey,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: deviceWidth * .2,
                      child: Text(
                        "OR",
                        style: TextStyle(
                            color: kGrey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: deviceWidth * .35,
                      child: Divider(
                        thickness: 1.5,
                        color: kGrey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .05,
              ),
              TextFormField(
                cursorColor: kGrey,
                focusNode: _fullNameFocusNode,
                decoration: InputDecoration(
                  hintText: "FULL NAME",
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
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
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_emailFocusNode);
                },
              ),
              SizedBox(
                height: deviceWidth * .05,
              ),
              TextFormField(
                cursorColor: kGrey,
                focusNode: _emailFocusNode,
                decoration: InputDecoration(
                  hintText: "EMAIL ADDRESS",
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
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
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_passwordFocusNode);
                },
              ),
              SizedBox(
                height: deviceWidth * .05,
              ),
              TextFormField(
                cursorColor: kGrey,
                focusNode: _passwordFocusNode,
                decoration: InputDecoration(
                  hintText: "PASSWORD",
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
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
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_numberFocusNode);
                },
              ),
              SizedBox(
                height: deviceWidth * .05,
              ),
              TextFormField(
                cursorColor: kGrey,
                focusNode: _numberFocusNode,
                decoration: InputDecoration(
                  hintText: "MOBILE NUMBER",
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
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
                height: deviceWidth * .025,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: deviceWidth * .05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                        focusColor: kGrey,
                        hoverColor: kGrey,
                        activeColor: kGrey,
                        checkColor: kWhite,
                        value: isCheck,
                        onChanged: (val) {
                          setState(() {
                            isCheck = val;
                            print(val);
                          });
                        }),
                    Container(
                      width: deviceWidth * .75,
                      child: Text(
                        "SEND ME NOTIFICATION VIA HOWSAPP",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: RichText(
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            "By clicking register you agree to Findest.com's\n",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      TextSpan(
                        text: "Terms and Conditions",
                        style: TextStyle(
                            fontSize: 12,
                            color: kGrey,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: " and ",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                            fontSize: 12,
                            color: kGrey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: deviceWidth * .075,
              ),
              InkWell(
                onTap: () {
                  goToFebricateScreen(context);
                },
                child: Container(
                  height: 50,
                  width: deviceWidth * 0.6,
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
                      'Register',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: kWhite,
                      ),
                    ),
                  ),
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
