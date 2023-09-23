import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Model/drinks.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Drinks[0].title,
          style: TextStyle(
            color: Colors.white54,
            fontSize: 18,
            letterSpacing: 2,
            wordSpacing: 2,
          ),
        ),
        SizedBox(height: 20),
        Text(
          Drinks[0].name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            letterSpacing: 2,
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white54.withOpacity(0.3),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.minus,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    CupertinoIcons.minus,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Text(
              '\$${Drinks[0].price}',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          Drinks[0].desr,
          style: TextStyle(
            color: Colors.white54,
            fontSize: 16,
          ),
          textAlign: TextAlign.start,
        ),
        SizedBox(height: 10),
        Text(
          'Volume: ${Drinks[0].volume} ml',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
