// import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:shop_app/size_config.dart';

import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          HomeHeader(),
          Container(
            width: double.infinity,
            height: 90,
            decoration: BoxDecoration(
              color: Color(0xFF4A3298),
            ),
          ),
        


        ],
      ),
    ));
  }
}
