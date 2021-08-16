// import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

import 'package:shop_app/size_config.dart';

import 'catagories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'section_title.dart';

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
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          DiscountBanner(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          Categories(),
           SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          SectionTitle(
            text: "Special for you",
            press: () {},
          ),
        ],
      ),
    ));
  }
}
