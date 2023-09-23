import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.6,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white54.withOpacity(0.14),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            'Add to Cart',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            Icons.favorite_outline,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
