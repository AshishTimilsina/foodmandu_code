import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/foodapi/pizza/pizza_service.dart';
import 'package:foodmandu/foodapi/pizza/pizza_state.dart';

final pizzadataprov = StateNotifierProvider<PizzaservicePRovider, PizzaState>(
    (ref) =>
        PizzaservicePRovider(PizzaState.empty(), ref.watch(pizzaprovider)));

class PizzaservicePRovider extends StateNotifier<PizzaState> {
  PizzaservicePRovider(super.state, this.service) {
    getdata();
  }
  final Pizzaservice service;
  Future getdata() async {
    state = state.copyWith(
        errmsg: '', isError: false, isLoad: true, isSuccess: false);
    final response = await service.getdata();
    response.fold((l) {
      state = state.copyWith(
          errmsg: l, isError: true, isLoad: false, isSuccess: true, pizzas: []);
    }, (r) {
      state = state.copyWith(
          errmsg: '',
          isError: false,
          isLoad: false,
          isSuccess: true,
          pizzas: r);
    });
  }
}
