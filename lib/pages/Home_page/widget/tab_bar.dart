import 'package:flutter/material.dart';

class TabBarDrink extends StatefulWidget {
  const TabBarDrink({super.key});

  @override
  State<TabBarDrink> createState() => _TabBarDrinkState();
}

class _TabBarDrinkState extends State<TabBarDrink> {
  List Drinks = [
    'Hot Coffee',
    'Cold Coffee',
    'Cappuiccino',
  ];
  int selecteedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Drinks.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selecteedIndex = index;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      Drinks[index],
                      style: TextStyle(
                        fontSize: selecteedIndex == index ? 18 : 16,
                        fontWeight: FontWeight.w500,
                        color: selecteedIndex == index
                            ? Colors.orange
                            : Colors.white54,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 3,
                      width: 70,
                      decoration: BoxDecoration(
                        color: selecteedIndex == index
                            ? Colors.orange
                            : Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
