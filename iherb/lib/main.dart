import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medicine/main_page/main_home_screen/main_home_screen.dart';
import 'main_page/screens/add_new_medicine/add_new_medicine.dart';
import 'main_page/screens/home/home.dart';
import 'main_page/screens/welcome/welcome.dart';
import 'login_and_registration/login.dart';
import 'navigation_buttons/profile.dart';
import 'login_and_registration/registration.dart';

void main() {
  runApp(MedicineApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black.withOpacity(0.05),
      statusBarColor: Colors.black.withOpacity(0.05),
      statusBarIconBrightness: Brightness.dark));
}

class MedicineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Popins",
          primaryColor: Color.fromRGBO(7, 190, 200, 1),
          textTheme: TextTheme(
              headline1: ThemeData.light().textTheme.headline1.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 38.0,
                    fontFamily: "Popins",
                  ),
              headline5: ThemeData.light().textTheme.headline1.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0,
                    fontFamily: "Popins",
                  ),
              headline3: ThemeData.light().textTheme.headline3.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    fontFamily: "Popins",
                  ))),
      routes: {
        "/": (context) => Welcome(),
        "/home": (context) => Home(),
        "/login": (context) => LoginPage(),
        "/registration": (context) => Registration(),
        "/add_new_medicine": (context) => AddNewMedicine(),
        "/profile": (context) => Profile(),
        "/main_home": (context) => MainHomeScreen()
      },
      initialRoute: "/",
    );
  }
}
