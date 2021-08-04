import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("ForgotPassword",
        style: TextStyle(
          fontSize: getProportionateScreenWidth(24),
          color: Colors.black,
          fontWeight: FontWeight.bold,
          
        ),
        )
      ],
    );
  }
}