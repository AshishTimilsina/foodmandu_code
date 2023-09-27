class RestaurantCocktail {
  final List<String> image;
  final List<String> title;
  final List<String> price;
  RestaurantCocktail({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<RestaurantCocktail> restaurantcocktail = [
  RestaurantCocktail(image: [
    "https://www.liquor.com/thmb/KPTRXSVO7vyx7O2fPyNkLh9JQPo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/mezcal-negroni-1500x1500-primary-6f6c472050a949c8a55aa07e1b5a2d1b.jpg",
    "https://www.lovefromtheoven.com/wp-content/uploads/2021/08/LARGE-strawberry-daiquiri-10-of-18.jpg",
    "https://www.liquor.com/thmb/JQgDGy26Zsw-_cFGKH4zNH9PlXk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Frozen-Margarita-1500x1500-hero-191e49b3ab4f4781b93f3cfacac25136.jpg",
    "https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_1:1/k%2FPhoto%2FRecipes%2F2021-10-espresso-martini%2F2021-10-12_ATK8093",
    "https://www.theendlessmeal.com/wp-content/uploads/2022/07/aperol-spritz-recipe-2.jpg",
    "https://bakeitwithlove.com/wp-content/uploads/2022/07/Moscow-Mule-sq.jpg",
  ], title: [
    "Negroni",
    "Daiquiri",
    "Margarita",
    "Espresso Martini",
    "Aperol Spritz",
    "Moscow Mule",
  ], price: [
    "Rs.850",
    "Rs.700",
    "Rs.850",
    "Rs.650",
    "Rs.800",
    "Rs.950",
  ]),
];
