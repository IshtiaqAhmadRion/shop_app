import 'package:flutter/material.dart';
import 'package:shop_app/screens/splash/component/body.dart';
import 'package:shop_app/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
