import 'package:foodmandu/foodapi/cocktail/cocktail.dart';

class CocktailState {
  final bool isError;
  final bool isSuccess;
  final bool isLoad;
  final String errmsg;
  final List<Cocktail> cocktails;
  CocktailState({
    required this.isError,
    required this.isSuccess,
    required this.isLoad,
    required this.errmsg,
    required this.cocktails,
  });

  CocktailState copyWith({
    bool? isError,
    bool? isSuccess,
    bool? isLoad,
    String? errmsg,
    List<Cocktail>? cocktails,
  }) {
    return CocktailState(
      isError: isError ?? this.isError,
      isSuccess: isSuccess ?? this.isSuccess,
      isLoad: isLoad ?? this.isLoad,
      errmsg: errmsg ?? this.errmsg,
      cocktails: cocktails ?? this.cocktails,
    );
  }

  factory CocktailState.empty() {
    return CocktailState(
        isError: false,
        isSuccess: false,
        isLoad: false,
        errmsg: '',
        cocktails: []);
  }
}
