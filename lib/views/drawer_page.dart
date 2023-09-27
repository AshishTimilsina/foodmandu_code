import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/views/login_page.dart';
import 'package:get/get.dart';

import '../Drawerinfo/about_page.dart';
import '../Drawerinfo/order_history.dart';
import '../Drawerinfo/privacy_policy.dart';
import '../Drawerinfo/terms_condition.dart';
import '../provider/auth_provider.dart';
import '../service/auth_service.dart';

import 'package:url_launcher/url_launcher.dart';

class DrawerPage extends ConsumerWidget {
  const DrawerPage({super.key});
  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(userdata(FirebaseAuth.instance.currentUser!.uid));
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          data.when(
              data: (data) {
                return DrawerHeader(
                  curve: Curves.bounceOut,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color(0xFF5B9A8B),
                            radius: 40,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 60,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            data.firstName.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        data.metadata!['email'].toString(),
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                );
              },
              error: (error, _) {
                return Text(error.toString());
              },
              loading: () => const Center(
                    child: CircularProgressIndicator(),
                  )),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          InkWell(
            onTap: () {
              Get.to(() => const OrderHistory());
            },
            child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.shopping_cart,
                    size: 35,
                    color: Color(0xFF5B9A8B),
                  ),
                  title: Text('Order History'),
                )),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          InkWell(
            onTap: () {},
            child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.star_half_outlined,
                    size: 35,
                    color: Color(0xFF5B9A8B),
                  ),
                  title: Text('Rate our app'),
                )),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          InkWell(
            onTap: () {
              Get.to(() => const TermsCondition());
            },
            child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.description,
                    size: 35,
                    color: Color(0xFF5B9A8B),
                  ),
                  title: Text('Terms and Condition'),
                )),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          InkWell(
            onTap: () {
              Get.to(() => const PrivacyPolicy());
            },
            child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.policy_outlined,
                    size: 35,
                    color: Color(0xFF5B9A8B),
                  ),
                  title: Text('Privacy Policy'),
                )),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          InkWell(
            onTap: () {
              Get.to(() => const AboutPage());
            },
            child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.people_alt_outlined,
                    size: 35,
                    color: Color(0xFF5B9A8B),
                  ),
                  title: Text('About us'),
                )),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          InkWell(
            onTap: () {
              ref.read(authprovider.notifier).userlogout();
              Navigator.of(context).pop();
              Get.to(() => Loginpage());
            },
            child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Color(0xFF5B9A8B),
                    size: 35,
                  ),
                  title: Text('Logout'),
                )),
          ),
        ],
      ),
    );
  }
}
