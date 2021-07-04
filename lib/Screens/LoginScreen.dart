import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../utilities/constant.dart';
import './RegisterScreen.dart';

enum select { register, login }

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  select selectButton;

  void goToRegisterScreen(BuildContext context) {
    Navigator.of(context).pushNamed(RegisterScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: deviceWidth * 0.1,
              backgroundImage: AssetImage('images/Logo (1).png'),
            ),
            Container(
              child: Image.asset(
                'images/nAME (1).png',
                height: deviceHeight * 0.1,
                width: deviceWidth * 0.7,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'NO 1 JOB HUNTER!!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Color(0XFF405866),
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.05,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'search',
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.05,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    goToRegisterScreen(context);
                  },
                  child: Container(
                    height: 50,
                    width: deviceWidth * 0.35,
                    decoration: BoxDecoration(
                      color: kWhite,
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
                          fontSize: 25.0,
                          color: kGrey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: deviceWidth * 0.1,
                ),
                Container(
                  height: 50,
                  width: deviceWidth * 0.35,
                  decoration: BoxDecoration(
                    color: kGrey,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: Color(0XFF405866),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectButton = select.login;
                      });
                    },
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: kWhite,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
