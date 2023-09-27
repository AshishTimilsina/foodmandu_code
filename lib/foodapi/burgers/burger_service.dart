import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/foodapi/burgers/burger.dart';

final burgerserviceprovider = Provider((ref) => Burgerservice());

class Burgerservice {
  final dio = Dio();
  Future<Either<String, List<Burger>>> getdata() async {
    try {
      final response =
          await dio.get('https://burgers-hub.p.rapidapi.com/burgers',
              options: Options(headers: {
                "X-RapidAPI-Key":
                    "2488c82492mshebb818e0d01b786p139d76jsnb77fff15b6b2",
                "X-RapidAPI-Host": "burgers-hub.p.rapidapi.com",
              }));
      final extractdata =
          (response.data as List).map((e) => Burger.fromJson(e)).toList();
      print("BURGER SERVICE");
      print(extractdata);
      return Right(extractdata);
    } on DioException catch (err) {
      return Left(err.toString());
    }
  }
}
