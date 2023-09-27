import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/models/order.dart';

final orderhistory = StreamProvider((ref) => OrderService.getdata());
final orderserviceprov = Provider((ref) => OrderService());

class OrderService {
  static final orderitems = FirebaseFirestore.instance.collection('orders');
  static Stream<List<Orderdata>> getdata() {
    return orderitems
        .where('userid', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .snapshots()
        .map((event) => event.docs.map((e) {
              final json = e.data();
              return Orderdata(
                orderid: e.id,
                userid: json['userid'],
                foodname: json['foodname'],
                quantity: json['quantity'],
                fooddesc: json['fooddesc'],
                datetime: json['datetime'],
                amount: json['amount'],
              );
            }).toList());
  }

  Future<Either<String, bool>> addorder({
    required String userid,
    required String datetime,
    required String foodname,
    required String quantity,
    required String fooddesc,
    required String amount,
  }) async {
    try {
      await orderitems.add({
        'userid': userid,
        'foodname': foodname,
        'quantity': quantity,
        'fooddesc': fooddesc,
        'amount': amount,
        'datetime': datetime,
      });
      return const Right(true);
    } on FirebaseException catch (err) {
      return Left(err.toString());
    }
  }
}
