import 'package:foodmandu/foodapi/cake/cake.dart';

class CakeState {
  final bool isError;
  final bool isSuccess;
  final bool isLoad;
  final String errmsg;
  final List<Cake> cakes;
  CakeState({
    required this.isError,
    required this.isSuccess,
    required this.isLoad,
    required this.errmsg,
    required this.cakes,
  });

  CakeState copyWith({
    bool? isError,
    bool? isSuccess,
    bool? isLoad,
    String? errmsg,
    List<Cake>? cakes,
  }) {
    return CakeState(
      isError: isError ?? this.isError,
      isSuccess: isSuccess ?? this.isSuccess,
      isLoad: isLoad ?? this.isLoad,
      errmsg: errmsg ?? this.errmsg,
      cakes: cakes ?? this.cakes,
    );
  }

  factory CakeState.empty() {
    return CakeState(
        isError: false, isSuccess: false, isLoad: false, errmsg: '', cakes: []);
  }
}
