import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/instances/firebase_provider.dart';

// for multiple user

final userdata =
    StreamProvider.family((ref, String id) => Authservice.getuserinfo(id));
final authserviceprovider = Provider((ref) => Authservice(
      auth: ref.watch(authenticationprovider),
      cloud: ref.watch(cloudprovider),
      message: ref.watch(messageprovider),
    ));

class Authservice {
  final FirebaseAuth auth;
  final FirebaseFirestore cloud;
  final FirebaseMessaging message;

  Authservice({
    required this.auth,
    required this.cloud,
    required this.message,
  });

  static final userDb = FirebaseFirestore.instance.collection('users');
  static Stream<types.User> getuserinfo(String userid) {
    return userDb.doc(userid).snapshots().map((event) {
      final json = event.data() as Map<String, dynamic>;
      return types.User(id: event.id, firstName: json['firstName'], metadata: {
        'email': json['metadata']['email'],
        'token': json['metadata']['token'],
      });
    });
  }

  Future<Either<String, bool>> userlogin(
      {required String email, required String password}) async {
    try {
      final token = message.getToken();
      final response =
          auth.signInWithEmailAndPassword(email: email, password: password);
      return const Right(true);
    } on FirebaseAuthException catch (err) {
      return Left(err.toString());
    } catch (err) {
      return Left(err.toString());
    }
  }

  Future<Either<String, bool>> userSignup({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      final response = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      final token = await message.getToken();
      FirebaseChatCore.instance.createUserInFirestore(types.User(
        id: response.user!.uid,
        firstName: username,
        metadata: {
          'email': email,
          'token': token,
        },
      ));
      return const Right(true);
    } on FirebaseAuthException catch (err) {
      return Left(err.toString());
    } on FirebaseException catch (err) {
      return Left(err.toString());
    } catch (err) {
      return Left(err.toString());
    }
  }

  Future<Either<String, bool>> userlogout() async {
    try {
      await auth.signOut();
      return const Right(true);
    } on FirebaseAuthException catch (err) {
      return Left(err.toString());
    } on FirebaseException catch (err) {
      return Left(err.toString());
    } catch (err) {
      return Left(err.toString());
    }
  }
}
