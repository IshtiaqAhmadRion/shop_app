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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: AppbarContent(),
      ),
    );
  }
}

class AppbarContent extends StatelessWidget {
  const AppbarContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              ),
              child: Row(
                children: [
                  RoundedIconBtn(iconData: Icons.arrow_back_ios, press: ()=>Navigator.pop(context),
                  ),
                ],
              ),),

    );
  }
}

// class CustomAppBar extends PreferredSize {

//   @override
//   Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [],
//     );
//   }
// }
class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
