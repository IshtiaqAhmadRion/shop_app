import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/home/components/section_title.dart';

import 'package:shop_app/size_config.dart';

import 'catagories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'special_offers.dart';

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
          SpecialOffers(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          SectionTitle(text: "Populer Product", press: () {}),
          SizedBox(
            width: getProportionateScreenWidth(140),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.02,
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(demoProducts[0].images[0]),
                  ),
                ),
                const SizedBox(height: 5,),
                Text(
                  demoProducts[0].title,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  maxLines: 2,
                ),
                Row(
                  children: [
                    Text(
                      "\$${demoProducts[0].price}",
                      style: TextStyle(fontSize: getProportionateScreenWidth(18),fontWeight: FontWeight.w600,color: kPrimaryColor),
                      
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
