class RestaurantChinese {
  final List<String> image;
  final List<String> title;
  final List<String> price;
  RestaurantChinese({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<RestaurantChinese> restaurantchinese = [
  RestaurantChinese(title: [
    "Fried Rice",
    "Keema Noodles",
    "Manchurian Veg/Chicken",
    "Garlic Prawn",
    "Whole Trout Fish",
    "Stir Fried Tofu & Bok Choy",
    "Chicken Spring Rolls",
  ], image: [
    "https://www.savoryexperiments.com/wp-content/uploads/2022/11/Fried-Rice-9-500x500.jpg",
    "https://hungerend.com/wp-content/uploads/2023/06/buff-keema-noodles.jpg",
    "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/07/chicken-manchurian-1.jpg",
    "https://casuallypeckish.com/wp-content/uploads/2020/09/Butter-garlic-prawns-500x375.jpg",
    "https://weekendatthecottage.com/wp-content/uploads/2021/07/WholeGrilledRainbowTrout10.jpg",
    "https://thewanderlustkitchen.com/wp-content/uploads/2016/12/Sichuan-Tofu-Bok-Choy-Stir-Fry-6.jpg",
    "https://www.manusmenu.com/wp-content/uploads/2015/01/1-Chicken-Spring-Rolls-9-1-of-1.jpg",
  ], price: [
    "Rs.415",
    "Rs.360",
    "Rs.470/530",
    "Rs.1535",
    "Rs.1350",
    "Rs.650",
    "Rs.200"
  ]),
];
