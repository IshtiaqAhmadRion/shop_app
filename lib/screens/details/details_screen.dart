import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      
    );
  }
}

// user PC



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


