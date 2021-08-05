import 'package:flutter/material.dart';
import 'package:shop_app/components/socal_card.dart';

import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Sizeconfig.screenHeight! * 0.02,
              ),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \nwith socila media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Sizeconfig.screenHeight! * 0.07,
              ),
              SignUpForm(),
              SizedBox(
                height: Sizeconfig.screenHeight! * 0.07,
              ),
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
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                "By continuing your confirm that you agree \nwith our Term and condition",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
