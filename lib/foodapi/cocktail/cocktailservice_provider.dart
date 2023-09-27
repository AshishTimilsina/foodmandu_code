import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/foodapi/cocktail/coctail_service.dart';

import 'cocktailstate.dart';

final cocktaildata =
    StateNotifierProvider<CocktailservicePRovider, CocktailState>((ref) =>
        CocktailservicePRovider(
            CocktailState.empty(), ref.watch(cocktailprovider)));

class CocktailservicePRovider extends StateNotifier<CocktailState> {
  CocktailservicePRovider(super.state, this.service) {
    getdata();
  }
  final Cocktailservice service;
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
        cocktails: [],
      );
    }, (r) {
      state = state.copyWith(
          errmsg: '',
          isError: false,
          isLoad: false,
          isSuccess: true,
          cocktails: r);
    });
  }
}
