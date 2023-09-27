import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/foodapi/cocktail/cocktail.dart';

final cocktailprovider = Provider((ref) => Cocktailservice());

List<Cocktail> dataaa = [];

class Cocktailservice {
  final dio = Dio();
  Future<Either<String, List<Cocktail>>> getdata() async {
    try {
      final response = await dio.get('https://the-cocktail-db3.p.rapidapi.com/',
          options: Options(headers: {
            "X-RapidAPI-Key":
                "2488c82492mshebb818e0d01b786p139d76jsnb77fff15b6b2",
            "X-RapidAPI-Host": "the-cocktail-db3.p.rapidapi.com",
          }));
      final extractdata =
          (response.data as List).map((e) => Cocktail.fromJson(e)).toList();

      return Right(extractdata);
    } on DioException catch (err) {
      return Left(err.toString());
    }
  }
}
