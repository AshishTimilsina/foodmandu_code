import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/foodapi/pizza/pizza.dart';

final pizzaprovider = Provider((ref) => Pizzaservice());

class Pizzaservice {
  final dio = Dio();
  Future<Either<String, List<Pizza>>> getdata() async {
    try {
      final response =
          await dio.get('https://pizza-and-desserts.p.rapidapi.com/pizzas',
              options: Options(headers: {
                "X-RapidAPI-Key":
                    "2488c82492mshebb818e0d01b786p139d76jsnb77fff15b6b2",
                "X-RapidAPI-Host": "pizza-and-desserts.p.rapidapi.com",
              }));
      final extractdata =
          (response.data as List).map((e) => Pizza.fromJson(e)).toList();

      return Right(extractdata);
    } on DioException catch (err) {
      return Left(err.toString());
    }
  }
}
