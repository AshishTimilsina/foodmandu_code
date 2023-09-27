import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/models/spotlight.dart';
import 'package:foodmandu/views/ad_page.dart';
import 'package:foodmandu/views/food_show.dart';
import 'package:foodmandu/views/purchase_page.dart';
import 'package:foodmandu/widgets/restaurant_menu.dart';
import 'package:get/get.dart';
import '../models/exclusive.dart';
import '../models/food.dart';
import '../widgets/burger_data.dart';
import '../widgets/cake_data.dart';
import '../widgets/chinese_data.dart';
import '../widgets/cock_data.dart';
import 'drawer_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/exclusivefood_page.dart';
import '../widgets/luxury_res.dart';
import '../widgets/momos_data.dart';
import '../widgets/pizza_test.dart';
import '../widgets/restro_data.dart';
import '../widgets/spotlight_page.dart';
import '../widgets/vegan_data.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  List<String> imagelist = [
    'assets/adimage/kfc.png',
    'assets/adimage/bakery.jpg',
    'assets/adimage/momos.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const DrawerPage(),
        appBar: AppBar(
          title: const Text('FoodMandu By Ashish'),
          centerTitle: true,
          backgroundColor: const Color(0xFF5B9A8B),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 150,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: foods.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(top: 12, right: 50, left: 20),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(() => FoodShow(
                                      food: foods[index],
                                    ));
                              },
                              child: Image(
                                image: AssetImage(foods[index].image),
                                height: 55,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              foods[index].name,
                            )
                          ],
                        ),
                      );
                    }),
              ),
              CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                    aspectRatio: 2.0,
                    initialPage: 2,
                  ),
                  items: imagelist
                      .map((e) => Builder(builder: (context) {
                            return SizedBox(
                              width: double.infinity,
                              child: Image(
                                image: AssetImage(
                                  e,
                                ),
                                fit: BoxFit.cover,
                              ),
                            );
                          }))
                      .toList()),
              const SizedBox(height: 15),
              const Text(
                'Exclusively at Foodmandu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Explore the delicious from the best eateries in town',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 15),
              const ExclusiveFood(),
              const SizedBox(height: 15),
              const SpotlightPage(),
              const SizedBox(height: 15),
              const Text(
                "Cocktail And Drinks Option",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Text(
                "Specially in Foodmandu",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 15),
              const Cockdata(),
              const SizedBox(height: 15),
              const PizzaTestPage(),
              const SizedBox(height: 15),
              const SizedBox(
                height: 140,
                child: Image(
                  image: AssetImage('assets/images/fresh.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 10),
              const CakePage(),
              const SizedBox(height: 10),
              const Luxuryrestaurant(),
              const SizedBox(height: 10),
              Card(
                child: InkWell(
                  onTap: () {
                    Get.to(() => const RestaurantMenus());
                  },
                  child: const SizedBox(
                    height: 170,
                    width: double.infinity,
                    child: Image(
                      image: AssetImage('assets/images/adv.jpg'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              const MomoPage(),
              const SizedBox(height: 15),
              const BurgerPage(),
              const SizedBox(height: 15),
              const VeganPage(),
              const SizedBox(height: 15),
              const Divider(
                thickness: 2,
                color: Colors.grey,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'Groceries at your doorstep',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {
                    Get.to(() => const AdvertisementPage());
                  },
                  child: const SizedBox(
                    height: 230,
                    width: double.infinity,
                    child: Image(
                      image: AssetImage('assets/images/ad.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Have Some Chinese today",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Text(
                "Specially in Foodmandu",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              const ChinesePage(),
              const Divider(
                thickness: 2,
                color: Colors.grey,
              ),
              const Divider(
                thickness: 2,
                color: Colors.grey,
              ),
              const Text(
                "Featured Restaurants",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Text(
                "Good Restaurant,Good Food,Good Times",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              const Restrodata(),
            ]),
          ),
        ),
      ),
    );
  }
}
