import 'package:foodmandu/foodapi/chinese/chinese.dart';

class ChineseState {
  final bool isError;
  final bool isSuccess;
  final bool isLoad;
  final String errmsg;
  final List<Chinese> chinese;
  ChineseState({
    required this.isError,
    required this.isSuccess,
    required this.isLoad,
    required this.errmsg,
    required this.chinese,
  });

  ChineseState copyWith({
    bool? isError,
    bool? isSuccess,
    bool? isLoad,
    String? errmsg,
    List<Chinese>? chinese,
  }) {
    return ChineseState(
      isError: isError ?? this.isError,
      isSuccess: isSuccess ?? this.isSuccess,
      isLoad: isLoad ?? this.isLoad,
      errmsg: errmsg ?? this.errmsg,
      chinese: chinese ?? this.chinese,
    );
  }

  factory ChineseState.empty() {
    return ChineseState(
        isError: false,
        isSuccess: false,
        isLoad: false,
        errmsg: '',
        chinese: []);
  }
}
