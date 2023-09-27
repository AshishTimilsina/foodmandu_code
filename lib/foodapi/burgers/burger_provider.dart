import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/foodapi/burgers/burger_service.dart';
import 'package:foodmandu/foodapi/burgers/burger_state.dart';

final burgerdataprov =
    StateNotifierProvider<BurgerservicePRovider, BurgerState>((ref) =>
        BurgerservicePRovider(
            BurgerState.empty(), ref.watch(burgerserviceprovider)));

class BurgerservicePRovider extends StateNotifier<BurgerState> {
  BurgerservicePRovider(super.state, this.service) {
    getdata();
  }
  final Burgerservice service;
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
        burgers: [],
      );
    }, (r) {
      state = state.copyWith(
          errmsg: '',
          isError: false,
          isLoad: false,
          isSuccess: true,
          burgers: r);
    });
  }
}
