import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';

import 'package:shop_app/models/product.dart';
import 'package:shop_app/size_config.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ProductDescription(
                    product: product,
                    pressOnSeeMore: () {},
                  ),
                  TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ColorDots(product: product),
                          TopRoundedContainer(
                            color: Colors.white,
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: Sizeconfig.screenHeight! * 0.15,
                                    right: Sizeconfig.screenWidth! * 0.15,
                                    top: getProportionateScreenWidth(15),
                                    bottom: getProportionateScreenWidth(15),
                                    ),
                                child: CustomButton(
                                  text: "Add to Cart",
                                  voidCallback: () {},
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
