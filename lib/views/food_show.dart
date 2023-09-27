import 'package:flutter/material.dart';
import 'package:foodmandu/models/food.dart';
import 'package:foodmandu/widgets/restaurant_menu.dart';

import '../tab_barview/restaurant_store.dart';

class FoodShow extends StatelessWidget {
  const FoodShow({super.key, required this.food});
  final Food food;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
          appBar: AppBar(
            title: Text(food.name),
            centerTitle: true,
            backgroundColor: const Color(0xFF5B9A8B),
            bottom: const TabBar(tabs: [
              Tab(
                text: 'RESTAURANT/STORE',
              ),
            ]),
          ),
          body: TabBarView(children: [
            RestaurantStore(foodData: food),
          ])),
    );
  }
}
