import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Sizeconfig.screenHeight! * 0.04,
        ),
        Image.asset(
          "assets/images/success.png",
          width: Sizeconfig.screenWidth,
          height: Sizeconfig.screenHeight! * 0.4, //40%
        ),
        SizedBox(
          height: Sizeconfig.screenHeight! * 0.08,
        ),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
       Spacer(),
        SizedBox(
          width: Sizeconfig.screenWidth! * 0.6,
          child: CustomButton(text: "Back to home", 
          voidCallback: () => Navigator.pushNamed(context, HomeScreen.routeName)),
        ),
        Spacer(),
      ],
    );
  }
}
