import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/foodapi/chinese/chinese.dart';

final chineseserviceprovider = Provider((ref) => Chineseservice());

class Chineseservice {
  final dio = Dio();
  Future<Either<String, List<Chinese>>> getdata() async {
    try {
      final response = await dio.get('https://chinese-food-db.p.rapidapi.com/',
          options: Options(headers: {
            "X-RapidAPI-Key":
                "2488c82492mshebb818e0d01b786p139d76jsnb77fff15b6b2",
            "X-RapidAPI-Host": "chinese-food-db.p.rapidapi.com",
          }));
      final extractdata =
          (response.data as List).map((e) => Chinese.fromJson(e)).toList();

      return Right(extractdata);
    } on DioException catch (err) {
      return Left(err.toString());
    }
  }
}
