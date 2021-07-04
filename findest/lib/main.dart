import 'package:flutter/material.dart';
import './Screens/LoginScreen.dart';
import './Screens/RegisterScreen.dart';
import './Screens/FebricateScreen.dart';
import './Screens/EducationDetailScreen.dart';
import './Screens/KeySkillScreen.dart';
import './Screens/WorkExpScreen.dart';
import './Screens/HomeScreen.dart';
import './Screens/SearchJobScreen.dart';
import './Screens/SearchRecruiterScreen.dart';
import './Screens/FilterJobScreen.dart';
import './Screens/ApplicationHistory.dart';
import './Screens/HomePage.dart';
import './Screens/RecruiterCommunication.dart';

void main() {
  runApp(FindestApp());
}

class FindestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        RegisterScreen.routeName: (context) => RegisterScreen(),
        FebricateScreen.routeName: (context) => FebricateScreen(),
        EducationalDetailScreen.routeName: (context) =>
            EducationalDetailScreen(),
        KeySkillScreen.routeName: (context) => KeySkillScreen(),
        WorkExpScreen.routeName: (context) => WorkExpScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SearchJobScreen.routeName: (context) => SearchJobScreen(),
        SearchRecruiterScreen.routeName: (context) => SearchRecruiterScreen(),
        FilterJobScreen.routeName: (context) => FilterJobScreen(),
        ApplicationHistory.routeName: (context) => ApplicationHistory(),
        HomePage.routeName: (context) => HomePage(),
        RecruiterCommunication.routeName: (context) => RecruiterCommunication(),
      },
    );
  }
}
