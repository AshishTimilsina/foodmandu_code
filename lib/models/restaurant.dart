// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:foodmandu/models/item.dart';

class Restaurant {
  final List<String> name;
  final List<String> location;
  final List<String> rating;
  final List<String> deliverytime;
  final Fooditem fooditem;
  final List<String> images;
  Restaurant({
    required this.name,
    required this.location,
    required this.rating,
    required this.deliverytime,
    required this.fooditem,
    required this.images,
  });
}
