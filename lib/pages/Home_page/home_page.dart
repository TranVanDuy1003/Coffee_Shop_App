import 'package:coffee_shop/pages/Home_page/widget/tab_bar.dart';
import 'package:flutter/material.dart';

import 'widget/app_bar.dart';
import 'widget/item_card.dart';
import 'widget/search.dart';
import 'widget/title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBar(),
              SizedBox(height: 10),
              TitleWidget(),
              SizedBox(height: 20),
              Search(),
              TabBarDrink(),
              ItemCard(),
            ],
          ),
        ),
      ),
    );
  }
}
