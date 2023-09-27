import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/foodapi/vegan/vegan_service.dart';
import 'package:foodmandu/foodapi/vegan/vegan_state.dart';

final vegandataprov = StateNotifierProvider<VeganservicePRovider, VeganState>(
    (ref) => VeganservicePRovider(
        VeganState.empty(), ref.watch(veganserviceprovider)));

class VeganservicePRovider extends StateNotifier<VeganState> {
  VeganservicePRovider(super.state, this.service) {
    getdata();
  }
  final Veganservice service;
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
        vegans: [],
      );
    }, (r) {
      state = state.copyWith(
          errmsg: '',
          isError: false,
          isLoad: false,
          isSuccess: true,
          vegans: r);
    });
  }
}
