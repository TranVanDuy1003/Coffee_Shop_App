import 'package:flutter/material.dart';

import '../../Home_page/home_page.dart';

class StartedBtn extends StatelessWidget {
  const StartedBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(200, 50),
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        'Get Started',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
