import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(aspectRatio: 1,
          child: Image.asset(product.images[0]),
          ),
        ),

      ],
    );
  }
}
