import 'package:flutter/material.dart';
import 'package:foodmandu/purchasepage/restaurant_purchase.dart';
import 'package:get/get.dart';

import '../models/food.dart';

class Restrodata extends StatelessWidget {
  const Restrodata({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
            itemCount: foods.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 16 / 15,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(() => RestaurantPurchase(
                        fooditem: foods[index]
                            .restaurant
                            .fooditem
                            .foodpictures[index]
                            .toString(),
                        resimage: foods[index].restaurant.images[index],
                        resname: foods[index].restaurant.name[index],
                        deliveryhrs:
                            foods[index].restaurant.deliverytime[index],
                        location: foods[index].restaurant.location[index],
                        fname: foods[index]
                            .restaurant
                            .fooditem
                            .foodpicturesname[index],
                      ));
                },
                child: GridTile(
                  footer: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                    ),
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Image(
                          image:
                              AssetImage(foods[index].restaurant.images[index]),
                          height: 100,
                          width: 80,
                        ),
                        Container(
                          height: 100.0,
                          width: 2.0,
                          color: Colors.grey,
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(foods[index].restaurant.name[index]),
                            Text(foods[index]
                                .restaurant
                                .fooditem
                                .foodpicturesname[index]),
                            Text(
                                '${foods[index].restaurant.location[index]}(${foods[index].restaurant.deliverytime[index]})'),
                          ],
                        )
                      ],
                    ),
                  ),
                  child: Image(
                    image: AssetImage(
                        foods[index].restaurant.fooditem.foodpictures[index]),
                    fit: BoxFit.fill,
                  ),
                ),
              );
            }));
  }
}
