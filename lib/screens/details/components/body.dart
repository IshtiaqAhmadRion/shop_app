import 'package:flutter/material.dart';


import 'package:shop_app/models/product.dart';


import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(product: product, pressOnSeeMore: (){},
              ),
              TopRoundedContainer(color: Color(0xFFF6F7F9), child: Row(
                children: [],
              ),
              )

            ],
          ),
        ),
      ],
    );
  }
}

