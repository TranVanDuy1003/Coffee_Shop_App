import 'package:flutter/material.dart';

import '../../../Model/drinks.dart';

class Images extends StatelessWidget {
  const Images({
    super.key,
    required this.drink,
  });
  final Drink drink;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        drink.image,
        fit: BoxFit.contain,
        width: MediaQuery.of(context).size.width * 1.2,
      ),
    );
  }
}
