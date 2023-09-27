import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/views/login_page.dart';

import 'home_page.dart';

final streamdata =
    StreamProvider((ref) => FirebaseAuth.instance.authStateChanges());

class StatusPage extends ConsumerWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(streamdata);
    return Scaffold(
      body: data.when(data: (data) {
        if (data == null) {
          return Loginpage();
        } else {
          return Homepage();
        }
      }, error: (error, _) {
        return Text(error.toString());
      }, loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
