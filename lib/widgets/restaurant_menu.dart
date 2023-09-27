import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/menuTabbar/chinese_view.dart';
import 'package:foodmandu/menuTabbar/indian_view.dart';
import 'package:foodmandu/menuTabbar/italy_view.dart';
import 'package:foodmandu/menuTabbar/momo_view.dart';
import 'package:foodmandu/menuTabbar/nepali_authentic.dart';
import 'package:foodmandu/menuTabbar/pizza_view.dart';
import 'package:foodmandu/menuTabbar/platter_view.dart';
import 'package:foodmandu/menuTabbar/sekuwa_view.dart';
import 'package:foodmandu/menuTabbar/tandoor_view.dart';
import '../menuTabbar/burger_view.dart';
import '../menuTabbar/cake_view.dart';
import '../menuTabbar/cocktail_view.dart';

class RestaurantMenus extends ConsumerWidget {
  const RestaurantMenus({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return SafeArea(
      child: Scaffold(
          body: DefaultTabController(
        length: 12,
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Select Your Food'),
              centerTitle: true,
              backgroundColor: const Color(0xFF5B9A8B),
              bottom: const TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(
                      text: 'Momo',
                    ),
                    Tab(
                      text: 'Pizza',
                    ),
                    Tab(
                      text: 'Burgers',
                    ),
                    Tab(
                      text: 'Sekuwa',
                    ),
                    Tab(
                      text: 'Nepali Authentic dishes',
                    ),
                    Tab(
                      text: 'Platter\'s',
                    ),
                    Tab(
                      text: 'Touch of italy',
                    ),
                    Tab(
                      text: 'From the Tandoor',
                    ),
                    Tab(
                      text: 'Chinese',
                    ),
                    Tab(
                      text: 'Indian',
                    ),
                    Tab(
                      text: 'Bakeries',
                    ),
                    Tab(
                      text: 'Cocktails',
                    ),
                  ]),
            ),
            body: const TabBarView(children: [
              MomosViews(),
              PizzaViews(),
              BurgerViews(),
              SekuwaViews(),
              NepaliAuthViews(),
              PlattersViews(),
              ItalyViews(),
              TandoorViews(),
              ChineseViews(),
              IndianViews(),
              CakeViews(),
              CocktailViews(),
            ])),
      )),
    );
  }
}
