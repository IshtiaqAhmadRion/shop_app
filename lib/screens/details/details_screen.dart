import 'dart:html';

import 'package:flutter/material.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/size_config.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(),
      //  AppBar(
      //   backgroundColor: Colors.transparent,
      //   leading: Padding(
      //     padding: EdgeInsets.only(left: 20),
      //     child: RoundedIconBtn(
      //       iconData: Icons.arrow_back_ios,
      //       press: () => Navigator.pop(context),
      //     ),
      //   ),
      // ),
    );
  }
}

class CustomAppBar extends PreferredSize {
  CustomAppBar() : super();

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
      ],
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
