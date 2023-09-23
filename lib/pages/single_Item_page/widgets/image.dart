import 'package:flutter/material.dart';

import '../../../Model/drinks.dart';

class Images extends StatelessWidget {
  const Images({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        Drinks[0].image,
        fit: BoxFit.contain,
        width: MediaQuery.of(context).size.width * 1.2,
      ),
    );
  }
}
