import 'package:flutter/material.dart';
import 'package:foodmandu/purchasepage/luxhotel_purchase.dart';
import 'package:get/get.dart';

import '../models/luxuryexp.dart';

class Luxuryrestaurant extends StatelessWidget {
  const Luxuryrestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Luxury Experience',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const Text(
              'Enjoy 5 star moments in the comfort of your home',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 180,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: luxexp.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => LuxuryHotels(luxdata: luxexp[index]));
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 12, right: 50, left: 20),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 50,
                              // foregroundImage: AssetImage(luxexp[index].image),
                              child: CircleAvatar(
                                radius: 49,
                                backgroundImage:
                                    AssetImage(luxexp[index].image),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              luxexp[index].name,
                              maxLines: 1,
                            ),
                            Text(
                              luxexp[index].location,
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ])),
    );
  }
}
