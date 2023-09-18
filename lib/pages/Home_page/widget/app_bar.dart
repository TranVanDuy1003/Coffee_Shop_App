import 'package:flutter/material.dart';

class appBar extends StatelessWidget {
  const appBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.sort_rounded,
            color: Colors.white,
            size: 30,
          ),
          splashRadius: 30,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications,
            color: Colors.white,
            size: 30,
          ),
          splashRadius: 30,
        ),
      ],
    );
  }
}
