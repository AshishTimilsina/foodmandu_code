class RestaurantSekuwa {
  final List<String> image;
  final List<String> title;
  final List<String> price;
  RestaurantSekuwa({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<RestaurantSekuwa> restaurantsekuwa = [
  RestaurantSekuwa(image: [
    "https://www.gurkhas.com.au/wp-content/uploads/2021/09/chicken-shekuwa-800x600.jpg",
    "https://www.nepal-travel-guide.com/wp-content/uploads/2020/02/sekuwa-1024x682.png",
    "https://www.century-foods.com/wp-content/uploads/2021/03/Sekuwa-Chicken.jpg",
    "https://www.century-foods.com/wp-content/uploads/2021/03/Sekuwa-Chicken.jpg",
  ], price: [
    "Rs.500-1000 per kg",
    "Rs.1000-1100 per kg",
    "Rs.1000-1100 per kg",
    "Rs.2000-2500 per kg",
  ], title: [
    "Chicken Sekuwa",
    "Buff Sekuwa",
    "Pork Sekuwa",
    "Mutton Sekuwa",
  ])
];
