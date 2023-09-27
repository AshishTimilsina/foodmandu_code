import 'package:flutter/material.dart';
import 'package:foodmandu/models/food.dart';
import 'package:foodmandu/widgets/restaurant_menu.dart';
import 'package:get/get.dart';

class RestaurantStore extends StatelessWidget {
  final Food foodData;
  const RestaurantStore({super.key, required this.foodData});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: foodData.restaurant.name.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(() => RestaurantMenus());
            },
            child: SizedBox(
              height: 150,
              child: Card(
                elevation: 2,
                child: ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  leading: Image(
                    image: AssetImage(foodData.restaurant.images[index]),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        foodData.restaurant.name[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        foodData.restaurant.location[index],
                        style: const TextStyle(color: Colors.black),
                      ),
                      Text(
                        " ⭐ ${foodData.restaurant.rating[index]}",
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        foodData.restaurant.deliverytime[index],
                        style: const TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
