import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:foodmandu/foodapi/vegan/vegan_provider.dart';
import 'package:get/get.dart';

import '../views/vegan_page.dart';

class VeganPage extends ConsumerWidget {
  const VeganPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(vegandataprov);
    return Container(
      height: 380,
      width: double.infinity,
      color: const Color(0xFF5B9A8B),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Veg and Vegan Option',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Food items powered by plants',
              style: TextStyle(color: Colors.white),
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
                      itemCount: 20,
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
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const VeganssPage();
                            }));
                          },
                          child: GridTile(
                            footer: Container(
                              alignment: Alignment.center,
                              height: 50,
                              color: const Color.fromARGB(255, 78, 123, 112),
                              child: Text(
                                data.vegans[index].title.toString(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CachedNetworkImage(
                                  // imageUrl:
                                  //     'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                                  imageUrl: data.vegans[index].image.toString(),
                                  fit: BoxFit.cover,
                                  errorWidget: (context, url, error) =>
                                      const Center(
                                        child: Text('Loading.....'),
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
            Row(
              children: [
                const CircleAvatar(
                  foregroundImage: AssetImage(
                    'assets/images/nepalaya.jpeg',
                  ),
                  radius: 30,
                ),
                Container(
                  height: 60.0,
                  width: 2.0,
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nepalaya Rooftop Restaurant',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Pure veggies',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Dharmasthali | Kathmandu',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 5),
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
