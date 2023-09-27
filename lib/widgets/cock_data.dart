import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:foodmandu/menuTabbar/cocktail_view.dart';
import 'package:get/get.dart';

import '../foodapi/cocktail/cocktailservice_provider.dart';

class Cockdata extends ConsumerWidget {
  const Cockdata({super.key});
  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(cocktaildata);
    return SizedBox(
      height: 250,
      child: data.isLoad
          ? ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return const Padding(
                    padding: EdgeInsets.all(10),
                    child: SpinKitRotatingCircle(
                      color: Colors.pink,
                      size: 50.0,
                    ));
              })
          : Container(
              height: 250,
              color: const Color.fromARGB(0, 255, 255, 255),
              child: InkWell(
                onTap: () {
                  Get.to(() => const CocktailViews());
                },
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Expanded(
                              child: CachedNetworkImage(
                                  imageUrl:
                                      data.cocktails[index].image.toString(),
                                  // imageUrl:
                                  //     'https://plus.unsplash.com/premium_photo-1679397829259-5cd327e1e467?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
                                  fit: BoxFit.cover,
                                  errorWidget: (context, url, error) =>
                                      const Center(
                                        child: Text('Error'),
                                      )),
                            ),
                            Container(
                              alignment: Alignment.center,
                              color: Colors.white,
                              height: 45,
                              width: 150,
                              child: Text(
                                data.cocktails[index].title.toString(),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
    );
  }
}
