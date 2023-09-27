import 'package:foodmandu/foodapi/pizza/pizza.dart';

class PizzaState {
  final bool isError;
  final bool isSuccess;
  final bool isLoad;
  final String errmsg;
  final List<Pizza> pizzas;
  PizzaState({
    required this.isError,
    required this.isSuccess,
    required this.isLoad,
    required this.errmsg,
    required this.pizzas,
  });

  PizzaState copyWith({
    bool? isError,
    bool? isSuccess,
    bool? isLoad,
    String? errmsg,
    List<Pizza>? pizzas,
  }) {
    return PizzaState(
      isError: isError ?? this.isError,
      isSuccess: isSuccess ?? this.isSuccess,
      isLoad: isLoad ?? this.isLoad,
      errmsg: errmsg ?? this.errmsg,
      pizzas: pizzas ?? this.pizzas,
    );
  }

  factory PizzaState.empty() {
    return PizzaState(
        isError: false,
        isSuccess: false,
        isLoad: false,
        errmsg: '',
        pizzas: []);
  }
}
