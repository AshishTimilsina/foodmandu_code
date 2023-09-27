import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/foodapi/vegan/vegan.dart';

final veganserviceprovider = Provider((ref) => Veganservice());

class Veganservice {
  final dio = Dio();
  Future<Either<String, List<Vegan>>> getdata() async {
    try {
      final response =
          await dio.get('https://the-vegan-recipes-db.p.rapidapi.com/',
              options: Options(headers: {
                "X-RapidAPI-Key":
                    "2488c82492mshebb818e0d01b786p139d76jsnb77fff15b6b2",
                "X-RapidAPI-Host": "the-vegan-recipes-db.p.rapidapi.com",
              }));
      final extractdata =
          (response.data as List).map((e) => Vegan.fromJson(e)).toList();

      return Right(extractdata);
    } on DioException catch (err) {
      return Left(err.toString());
    }
  }
}
