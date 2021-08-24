import 'package:flutter/material.dart';
//import 'package:shop_app/constants.dart';
import 'package:shop_app/routs.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';

import 'package:shop_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: ProfileScreen.routeName,
      routes: routes,
    );
  }
}

