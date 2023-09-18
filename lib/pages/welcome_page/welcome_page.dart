import 'package:flutter/material.dart';

import 'widgets/button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(top: 100, bottom: 80),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
            opacity: 0.8,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Coffee Shop',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 200),
            Text(
              'Feeling low! Take a Sip of Coffee',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 19,
              ),
            ),
            StartedBtn(),
          ],
        ),
      ),
    );
  }
}
