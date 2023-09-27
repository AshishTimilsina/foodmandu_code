// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import '../../instances/flutter_toast.dart';
import '../../location/get_location.dart';
import '../../provider/common_provider.dart';
import '../../provider/order_provider.dart';
import '../../views/home_page.dart';

class Momopurchase extends ConsumerStatefulWidget {
  const Momopurchase({
    super.key,
    required this.img,
    required this.title,
    required this.price,
  });
  final String img;
  final String title;
  final String price;

  @override
  ConsumerState<Momopurchase> createState() => _MomopurchaseState();
}

class _MomopurchaseState extends ConsumerState<Momopurchase> {
  final quantityctrl = TextEditingController();
  final fooddescctrl = TextEditingController();
  final _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    ref.listen(orderprovider, (previous, next) {
      if (next.isError) {
        FlutterToast.showerror(message: 'Order denied.Some error has occured');
      } else if (next.isSuccess) {
        Get.to(() => Homepage());
        FlutterToast.showsuccess(message: 'Order Placed Successfully');
      }
    });
    final mode = ref.watch(modeprovider);
    final prov = ref.watch(orderprovider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('ORDER HERE'),
          centerTitle: true,
          backgroundColor: const Color(0xFF5B9A8B),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 370,
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 300,
                            width: double.infinity,
                            child: Image(
                              image: NetworkImage(widget.img),
                              fit: BoxFit.cover,
                            ),
                          ),
                          ListTile(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            title: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 100),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                        ],
                      );
                    }),
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Form(
                    autovalidateMode: mode,
                    key: _form,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.price,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            height: 50,
                            width: 250,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                color: Colors.lime,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: const Text(
                              'We only accept cash on Delivery',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 15),
                          ElevatedButton(
                              onPressed: () {
                                Get.to(() => const LocationCheck());
                              },
                              child: const Text('Get location')),
                          const SizedBox(height: 15),
                          TextFormField(
                            maxLines: 3,
                            style: const TextStyle(color: Colors.black),
                            controller: fooddescctrl,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Please inform us what kind of food you want ';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              errorStyle: const TextStyle(
                                color: Colors.black,
                              ),
                              hintText:
                                  "Type here if you have any note for this item",
                              hintStyle: const TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            style: const TextStyle(color: Colors.black),
                            controller: quantityctrl,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Please Enter the quantity of food you want';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              hintText: "Enter quantity",
                              hintStyle: const TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(height: 15),
                          InkWell(
                            onTap: () {
                              prov.isLoad ? null : _form.currentState!.save();
                              if (_form.currentState!.validate()) {
                                ref.read(orderprovider.notifier).addorder(
                                      userid: FirebaseAuth
                                          .instance.currentUser!.uid,
                                      amount: widget.price,
                                      fooddesc: fooddescctrl.text.trim(),
                                      quantity: quantityctrl.text.trim(),
                                      foodname: widget.title,
                                      datetime: DateTime.now().toString(),
                                    );
                                FocusScope.of(context).unfocus();
                              } else {
                                ref.read(modeprovider.notifier).change();
                              }
                            },
                            child: prov.isLoad
                                ? const Center(
                                    child: CircularProgressIndicator())
                                : Container(
                                    height: 50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.lime,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Center(
                                      child: Text(
                                        'Order Now',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                          ),
                        ]),
                  )),
            ],
          ),
        ));
  }
}
