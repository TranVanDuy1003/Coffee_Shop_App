import 'package:coffee_shop/Model/drinks.dart';
import 'package:flutter/material.dart';

import 'widgets/Content.dart';
import 'widgets/add_to_cart.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/image.dart';

class SingleItem extends StatelessWidget {
  const SingleItem({super.key, required this.drink});
  final Drink drink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 10,
              right: 20,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarWidget(),
                SizedBox(height: 30),
                Images(drink: drink),
                SizedBox(height: 20),
                Content(drink: drink),
                SizedBox(height: 50),
                AddToCart(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
