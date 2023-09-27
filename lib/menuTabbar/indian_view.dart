import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/purchasepage/resmenpurchase/resindian_pur.dart';
import 'package:get/get.dart';

import '../foodapi/restaurantData/res_indian.dart';

class IndianViews extends ConsumerWidget {
  const IndianViews({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 1.3,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemCount: restaurantindian[0].price.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(() => Indianpurchase(
                      img: restaurantindian[0].image[index],
                      title: restaurantindian[0].title[index],
                      price: restaurantindian[0].price[index]));
                },
                child: Card(
                  child: GridTile(
                    footer: Container(
                      alignment: Alignment.center,
                      height: 100,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 254, 246),
                          border: Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          Text(
                            restaurantindian[0].title[index],
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                          Text(
                            restaurantindian[0].price[index],
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Order Now',
                            style: TextStyle(
                                letterSpacing: 2,
                                color: Color.fromARGB(255, 101, 2, 249),
                                fontWeight: FontWeight.w700,
                                fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          child: CachedNetworkImage(
                            imageUrl: restaurantindian[0].image[index],
                            errorWidget: (context, url, error) => const Image(
                                image:
                                    AssetImage('assets/spotlight/pizza.jpg')),
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
