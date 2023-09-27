import 'package:foodmandu/foodapi/vegan/vegan.dart';

class VeganState {
  final bool isError;
  final bool isSuccess;
  final bool isLoad;
  final String errmsg;
  final List<Vegan> vegans;
  VeganState({
    required this.isError,
    required this.isSuccess,
    required this.isLoad,
    required this.errmsg,
    required this.vegans,
  });

  VeganState copyWith({
    bool? isError,
    bool? isSuccess,
    bool? isLoad,
    String? errmsg,
    List<Vegan>? vegans,
  }) {
    return VeganState(
      isError: isError ?? this.isError,
      isSuccess: isSuccess ?? this.isSuccess,
      isLoad: isLoad ?? this.isLoad,
      errmsg: errmsg ?? this.errmsg,
      vegans: vegans ?? this.vegans,
    );
  }

  factory VeganState.empty() {
    return VeganState(
        isError: false,
        isSuccess: false,
        isLoad: false,
        errmsg: '',
        vegans: []);
  }
}
