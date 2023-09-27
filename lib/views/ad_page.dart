import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodmandu/models/grocery.dart';
import 'package:foodmandu/purchasepage/groceries_pur.dart';
import 'package:get/get.dart';

class AdvertisementPage extends StatelessWidget {
  const AdvertisementPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            itemCount: groceries.length,
            itemBuilder: (context, index) {
              return Card(
                child: InkWell(
                  onTap: () {
                    Get.to(
                        () => Groceriespurchase(groceries: groceries[index]));
                  },
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
                            groceries[index].name,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                          Text(
                            groceries[index].price,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Purchase',
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
                            imageUrl: groceries[index].image,
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
