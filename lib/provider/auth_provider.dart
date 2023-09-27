import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/service/auth_service.dart';

import '../instances/common_state.dart';

final authprovider = StateNotifierProvider<AuthProvider, CommonState>(
    (ref) => AuthProvider(CommonState.empty(), ref.watch(authserviceprovider)));

class AuthProvider extends StateNotifier<CommonState> {
  AuthProvider(super.state, this.service);
  final Authservice service;
  Future<void> userlogin(
      {required String email, required String password}) async {
    try {
      state = state.copyWith(
          errmessage: '', isError: false, isLoad: true, isSuccess: false);
      final response =
          await service.userlogin(email: email, password: password);
      response.fold((l) {
        state = state.copyWith(
            errmessage: l, isError: true, isLoad: false, isSuccess: false);
      }, (r) {
        state = state.copyWith(
            errmessage: '', isError: false, isLoad: false, isSuccess: r);
      });
    } catch (err) {
      throw err.toString();
    }
  }

  Future<void> usersignup({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      state = state.copyWith(
          errmessage: '', isError: false, isLoad: true, isSuccess: false);
      final response = await service.userSignup(
          email: email, password: password, username: username);
      response.fold((l) {
        state = state.copyWith(
            errmessage: l, isError: true, isLoad: false, isSuccess: false);
      }, (r) {
        state = state.copyWith(
            errmessage: '', isError: false, isLoad: false, isSuccess: r);
      });
    } catch (err) {
      throw err.toString();
    }
  }

  Future<void> userlogout() async {
    try {
      state = state.copyWith(
          errmessage: '', isError: false, isLoad: true, isSuccess: false);
      final response = await service.userlogout();
      response.fold((l) {
        state = state.copyWith(
            errmessage: l, isError: true, isLoad: false, isSuccess: false);
      }, (r) {
        state = state.copyWith(
            errmessage: '', isError: false, isLoad: false, isSuccess: r);
      });
    } catch (err) {
      throw err.toString();
    }
  }
}
