import 'package:flutter/material.dart';
import 'package:gasandme/onboard/gettingstarted.dart';
import 'onboard/onboard1.dart';
import 'onboard/onboard2.dart';
import 'onboard/onboard3.dart';
import 'package:gasandme/apptheme/app_themedata.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }


  @override

  Widget build(BuildContext context) {


      return MaterialApp(
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        title: 'Gas and Me',

        initialRoute: '/',
        routes: {
          '/':(ctx) => OnboardOne(),
          // HomeScreen.routeName:(ctx)=>HomeScreen(),
          // ForgetPassword.routeName:(ctx)=>ForgetPassword(),
          OnboardOne.routeName: (ctx) => OnboardOne(),
          OnboardTwo.routeName: (ctx) => OnboardTwo(),
          OnboardThree.routeName: (ctx) => OnboardThree(),
          GettingStarted.routeName:(ctx)=>GettingStarted()



        },
      );

  }
}
