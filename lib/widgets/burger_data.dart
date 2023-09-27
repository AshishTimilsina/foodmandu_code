import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:foodmandu/foodapi/burgers/burger_provider.dart';
import 'package:foodmandu/menuTabbar/burger_view.dart';
import 'package:get/get.dart';

class BurgerPage extends ConsumerWidget {
  const BurgerPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(burgerdataprov);
    return Container(
      height: 300,
      width: double.infinity,
      color: const Color.fromARGB(255, 247, 254, 246),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Burger Options',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Deliciously Juicy, Uniquely Yours: Savor the Flavor',
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: data.isLoad
                  ? GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 2 / 3,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                      ),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const GridTile(
                          child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: SpinKitRotatingCircle(
                                color: Colors.pink,
                                size: 50.0,
                              )),
                        );
                      })
                  : GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 2 / 3,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                      ),
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.to(() => const BurgerViews());
                          },
                          child: GridTile(
                            footer: Container(
                              alignment: Alignment.center,
                              height: 50,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 247, 254, 246),
                                  border: Border.all(color: Colors.grey)),
                              child: Column(
                                children: [
                                  Text(
                                    softWrap: true,
                                    overflow: TextOverflow.clip,
                                    data.burgers[index].name.toString(),
                                    // 'Burger',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CachedNetworkImage(
                                  // imageUrl:
                                  //     'https://rapidapi-prod-apis.s3.amazonaws.com/8e652961-277d-4551-8106-d167481c6a54.jpg',
                                  imageUrl:
                                      data.burgers[index].images.toString(),
                                  fit: BoxFit.cover,
                                  errorWidget: (context, url, error) =>
                                      const Center(
                                        child: Text('Error'),
                                      )),
                              // child: Image(
                              //   image: NetworkImage(
                              //       data.pizzas[index].img.toString()),
                              //   width: 250,
                              //   fit: BoxFit.cover,
                              // ),
                            ),
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
