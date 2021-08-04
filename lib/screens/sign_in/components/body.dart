//import 'dart:html';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/socal_card.dart';
import 'package:shop_app/constants.dart';

// import 'package:shop_app/components/custom_surffix_icon.dart';
// import 'package:shop_app/components/default_button.dart';
// import 'package:shop_app/components/from_error.dart';
// import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import 'sign_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
       
          child: Column(
            children: [
              SizedBox(height: Sizeconfig.screenHeight! * 0.04,),
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Sign in with your email and password \nor continue with social meida",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Sizeconfig.screenHeight! * 0.08),
              SignForm(),
              SizedBox(height: Sizeconfig.screenHeight! * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocalCard(
                    icon: 'assets/icons/google-icon.svg',
                    voidCallback: () {},
                  ),
                  SocalCard(
                    icon: 'assets/icons/facebook-2.svg',
                    voidCallback: () {},
                  ),
                  SocalCard(
                    icon: 'assets/icons/twitter.svg',
                    voidCallback: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(fontSize: getProportionateScreenWidth(16)),
                  ),
                  Text(
                    "Sign Up ",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        color: kPrimaryColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
