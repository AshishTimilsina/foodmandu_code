import 'package:foodmandu/foodapi/burgers/burger.dart';

class BurgerState {
  final bool isError;
  final bool isSuccess;
  final bool isLoad;
  final String errmsg;
  final List<Burger> burgers;
  BurgerState({
    required this.isError,
    required this.isSuccess,
    required this.isLoad,
    required this.errmsg,
    required this.burgers,
  });

  BurgerState copyWith({
    bool? isError,
    bool? isSuccess,
    bool? isLoad,
    String? errmsg,
    List<Burger>? burgers,
  }) {
    return BurgerState(
      isError: isError ?? this.isError,
      isSuccess: isSuccess ?? this.isSuccess,
      isLoad: isLoad ?? this.isLoad,
      errmsg: errmsg ?? this.errmsg,
      burgers: burgers ?? this.burgers,
    );
  }

  factory BurgerState.empty() {
    return BurgerState(
        isError: false,
        isSuccess: false,
        isLoad: false,
        errmsg: '',
        burgers: []);
  }
}
