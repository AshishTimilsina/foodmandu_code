import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../service/order_service.dart';

class OrderHistory extends ConsumerWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(orderhistory);
    return Scaffold(
      body: data.when(data: (data) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Text('My BASKETS'),
              centerTitle: true,
              backgroundColor: const Color(0xFF5B9A8B),
            ),
            body: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/icon.jpg'),
                          radius: 30.0,
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data[index].foodname,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text('Quantity : ${data[index].quantity}'),
                            const SizedBox(height: 5),
                            Text('Date : ${data[index].datetime}'),
                            const SizedBox(height: 5),
                            Text(data[index].amount,
                                style: const TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w800,
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        );
      }, error: (error, _) {
        return Text(error.toString());
      }, loading: () {
        return const Center(child: CircularProgressIndicator());
      }),
    );
  }
}
