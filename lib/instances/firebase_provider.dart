import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

final authenticationprovider = Provider((ref) => FirebaseAuth.instance);
final cloudprovider = Provider((ref) => FirebaseFirestore.instance);
final messageprovider = Provider((ref) => FirebaseMessaging.instance);
final chatcoreprovider = Provider((ref) => FirebaseChatCore.instance);
