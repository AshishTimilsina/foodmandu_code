import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/foodapi/cake/cake_service.dart';
import 'package:foodmandu/foodapi/cake/cake_state.dart';

final cakedataprov = StateNotifierProvider<CakeservicePRovider, CakeState>(
    (ref) =>
        CakeservicePRovider(CakeState.empty(), ref.watch(cakeserviceprovider)));

class CakeservicePRovider extends StateNotifier<CakeState> {
  CakeservicePRovider(super.state, this.service) {
    getdata();
  }
  final Cakeservice service;
  Future getdata() async {
    state = state.copyWith(
        errmsg: '', isError: false, isLoad: true, isSuccess: false);
    final response = await service.getdata();
    response.fold((l) {
      state = state.copyWith(
        errmsg: l,
        isError: true,
        isLoad: false,
        isSuccess: true,
        cakes: [],
      );
    }, (r) {
      state = state.copyWith(
          errmsg: '', isError: false, isLoad: false, isSuccess: true, cakes: r);
    });
  }
}
