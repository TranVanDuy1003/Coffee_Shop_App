import 'package:flutter/material.dart';

import 'widgets/Content.dart';
import 'widgets/add_to_cart.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/image.dart';

class SingleItem extends StatelessWidget {
  const SingleItem({super.key});

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
                Images(),
                SizedBox(height: 20),
                Content(),
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
