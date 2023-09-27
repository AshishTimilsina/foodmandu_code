import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:foodmandu/foodapi/cake/cake_provider.dart';
import 'package:foodmandu/menuTabbar/cake_view.dart';
import 'package:get/get.dart';

class CakePage extends ConsumerWidget {
  const CakePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(cakedataprov);
    return Container(
      height: 312,
      width: double.infinity,
      color: Color.fromARGB(255, 235, 242, 240),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Remember us in your Auspicious day',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Bringing Joy, One Slice at a Time!',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
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
                      itemCount: data.cakes.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.to(() => const CakeViews());
                          },
                          child: GridTile(
                            footer: Container(
                              alignment: Alignment.center,
                              height: 70,
                              color: const Color.fromARGB(255, 203, 201, 201),
                              child: Text(
                                data.cakes[index].title.toString(),
                                // 'Cake',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CachedNetworkImage(
                                  imageUrl: data.cakes[index].image.toString(),
                                  // imageUrl:
                                  //     'https://images.unsplash.com/photo-1578985545062-69928b1d9587?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1989&q=80',
                                  fit: BoxFit.cover,
                                  errorWidget: (context, url, error) =>
                                      const Center(
                                        child: Text('Error'),
                                      )),
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
