import 'package:flutter/material.dart';

import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details/components/body.dart';

import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Object? args =
        ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: preferredAppBar(),
      body: Body(
        product: args!.product,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
