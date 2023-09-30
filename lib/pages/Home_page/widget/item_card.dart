import 'package:coffee_shop/Model/drinks.dart';
import 'package:flutter/material.dart';

import '../../single_Item_page/single_item_page.dart';

class ItemCard extends StatelessWidget {
  ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Drinks.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.80,
      ),
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            color: Color(0xff212325),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 8,
                spreadRadius: 1,
              ),
            ],
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SingleItem(
                    drink: Drinks[index],
                  ),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    Drinks[index].image,
                    fit: BoxFit.contain,
                    width: 100,
                    height: 100,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  Drinks[index].name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  Drinks[index].title,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white54,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$${Drinks[index].price}',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
