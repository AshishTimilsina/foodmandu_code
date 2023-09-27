import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/foodapi/chinese/chinese_service.dart';
import 'package:foodmandu/foodapi/chinese/chinese_state.dart';

final chinesedataprov =
    StateNotifierProvider<ChineseservicePRovider, ChineseState>((ref) =>
        ChineseservicePRovider(
            ChineseState.empty(), ref.watch(chineseserviceprovider)));

class ChineseservicePRovider extends StateNotifier<ChineseState> {
  ChineseservicePRovider(super.state, this.service) {
    getdata();
  }
  final Chineseservice service;
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
        chinese: [],
      );
    }, (r) {
      state = state.copyWith(
          errmsg: '',
          isError: false,
          isLoad: false,
          isSuccess: true,
          chinese: r);
    });
  }
}
