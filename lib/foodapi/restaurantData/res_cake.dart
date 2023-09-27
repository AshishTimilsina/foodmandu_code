class RestaurantCake {
  final List<String> image;
  final List<String> title;
  final List<String> price;
  RestaurantCake({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<RestaurantCake> restaurantcake = [
  RestaurantCake(image: [
    'https://cdn.pickuplimes.com/cache/e8/d2/e8d2767ce7ba58f8bf0ffb62b17415c8.jpg',
    'https://anitalianinmykitchen.com/wp-content/uploads/2019/06/angel-food-cake-sq-1-of-1.jpg',
    'https://www.allrecipes.com/thmb/gDJ1S6ETLfWGyyWw_4A_IGhvDYE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/9295_red-velvet-cake_ddmfs_4x3_1129-a8ab17b825e3464a9a53ceeda54ff461.jpg',
    'https://static01.nyt.com/images/2020/11/01/dining/Carrot-Cake-textless/Carrot-Cake-textless-threeByTwoMediumAt2X.jpg',
    'https://sugargeekshow.com/wp-content/uploads/2019/07/fresh-strawberry-cake-5.jpg',
    'https://www.foodandwine.com/thmb/K8EQqacthZEpDSh1c5gDld7cZ3U=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Coffee-Cake-FT-RECIPE0423-dbd0b1fe06034bffb69b99d45469caa4.jpg',
  ], title: [
    'Chocolate Cake',
    'Angel Food Cake',
    'Red Velvet Cake',
    'Carrot Cake',
    'Strawberry Cake',
    'Coffee Cake',
  ], price: [
    'Rs.345',
    'Rs.300',
    'Rs.145',
    'Rs.200',
    'Rs.150',
    'Rs.200',
  ])
];
