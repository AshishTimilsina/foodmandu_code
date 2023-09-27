import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/exclusive.dart';
import '../purchasepage/exclusive_purchase.dart';

class ExclusiveFood extends StatelessWidget {
  const ExclusiveFood({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: exclusive.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(() => Exclusivepurchase(
                              exclusivefoodata: exclusive[index],
                            ));
                      },
                      child: Image(
                        image: AssetImage(exclusive[index].foodimages),
                        height: 200,
                        width: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(exclusive[index].logo),
                      radius: 30,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(exclusive[index].resname),
                        Text(exclusive[index].fooditem),
                        Text(exclusive[index].location),
                      ],
                    )
                  ]),
                ],
              ),
            );
          }),
    );
  }
}
