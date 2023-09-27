import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/instances/common_state.dart';
import 'package:foodmandu/service/order_service.dart';

final orderprovider = StateNotifierProvider<OrderProvider, CommonState>(
    (ref) => OrderProvider(CommonState.empty(), ref.watch(orderserviceprov)));

class OrderProvider extends StateNotifier<CommonState> {
  OrderProvider(super.state, this.service);
  final OrderService service;
  Future<void> addorder({
    required String userid,
    required String foodname,
    required String quantity,
    required String fooddesc,
    required String amount,
    required String datetime,
  }) async {
    state = state.copyWith(
        errmessage: '', isError: false, isLoad: true, isSuccess: false);
    final response = await service.addorder(
      userid: userid,
      foodname: foodname,
      quantity: quantity,
      fooddesc: fooddesc,
      datetime: datetime,
      amount: amount,
    );
    response.fold((l) {
      state = state.copyWith(
          errmessage: l, isError: true, isLoad: false, isSuccess: false);
    }, (r) {
      state = state.copyWith(
          errmessage: '', isError: false, isLoad: false, isSuccess: true);
    });
  }
}
