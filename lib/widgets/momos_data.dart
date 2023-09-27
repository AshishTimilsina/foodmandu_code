import 'package:flutter/material.dart';
import 'package:foodmandu/widgets/restaurant_menu.dart';
import 'package:get/get.dart';

import '../models/momos.dart';

class MomoPage extends StatelessWidget {
  const MomoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Momo Madness',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Indulge in a fest of momo variations',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
            // const SizedBox(height: 10),
            SizedBox(
              height: 380,
              width: double.infinity,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => const RestaurantMenus());
                      },
                      child: GridTile(
                        footer: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: const Color.fromARGB(
                                      221, 145, 140, 140))),
                          alignment: Alignment.center,
                          height: 65,
                          child: Column(
                            children: [
                              Text(
                                momos[index].name,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                momos[index].location,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage(momos[index].image),
                              fit: BoxFit.fill,
                            )),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
