import 'package:flutter/material.dart';
import 'package:foodmandu/widgets/restaurant_menu.dart';
import 'package:get/get.dart';
import '../models/luxuryexp.dart';

class LuxuryHotels extends StatelessWidget {
  const LuxuryHotels({
    super.key,
    required this.luxdata,
  });
  final LuxuryExp luxdata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(luxdata.name),
          centerTitle: true,
          backgroundColor: const Color(0xFF5B9A8B),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 310,
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                color: const Color.fromARGB(255, 241, 225, 225),
                                height: 278,
                                width: double.infinity,
                                child: Image(
                                  image: NetworkImage(luxdata.foodimage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 220, horizontal: 20),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5)),
                                  child: SizedBox(
                                    width: 130,
                                    height: 100,
                                    child: Image(
                                      image: AssetImage(luxdata.image),
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    }),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  luxdata.name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    const Icon(Icons.location_on),
                    Text(luxdata.location),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Multi Cuisine'),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.info),
                    SizedBox(width: 5),
                    Text(
                      'Restaurant/Store Info',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  luxdata.desc,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 5,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  child: Text(
                    'Delivery Hours',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  )),
              const SizedBox(height: 10),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  child: Text('11:00 AM - 09:00 PM')),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 100),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Appprox 9.00 km',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.lightGreen)),
                      onPressed: () {
                        Get.to(() => const RestaurantMenus());
                      },
                      child: const Text(
                        'Check our Menu',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
              )
            ],
          ),
        ));
  }
}
