import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:foodmandu/foodapi/chinese/chinese_provider.dart';
import 'package:foodmandu/menuTabbar/chinese_view.dart';
import 'package:get/get.dart';

class ChinesePage extends ConsumerWidget {
  const ChinesePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(chinesedataprov);
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
                  Get.to(() => const ChineseViews());
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
                                      data.chinese[index].image.toString(),
                                  // imageUrl:
                                  //     'https://images.unsplash.com/photo-1623689048105-a17b1e1936b8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y2hpbmVzZSUyMGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60',
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
                              child: Text(data.chinese[index].title.toString()),
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
