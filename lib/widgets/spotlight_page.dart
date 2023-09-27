import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/spotlight.dart';
import '../purchasepage/spotlight_purchase.dart';

class SpotlightPage extends StatelessWidget {
  const SpotlightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      width: double.infinity,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'IN THE SPOTLIGHT',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Chef\'s special mentions',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 2 / 3,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemCount: spotlight[0].foodimages.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => Spotlightpurchase(
                              spotlightfoodata: spotlight[0],
                              reslocation: spotlight[0].resaddress,
                              amount: spotlight[0].amount[index],
                              foodname: spotlight[0].foodname[index],
                              image: spotlight[0].foodimages[index],
                            ));
                      },
                      child: GridTile(
                        footer: Container(
                          alignment: Alignment.center,
                          height: 50,
                          color: Colors.black,
                          child: Text(
                            spotlight[0].foodname[index],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage(spotlight[0].foodimages[index]),
                            width: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                CircleAvatar(
                  foregroundImage: AssetImage(spotlight[0].reslogo),
                  radius: 40,
                ),
                Container(
                  height: 60.0,
                  width: 2.0,
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      spotlight[0].resname,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Multi Cuisine',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      spotlight[0].resaddress,
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
