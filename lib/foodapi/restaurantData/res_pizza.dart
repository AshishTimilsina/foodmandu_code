// ignore_for_file: public_member_api_docs, sort_constructors_first
class RestaurantPizza {
  final List<String> image;
  final List<String> title;
  final List<String> price;
  RestaurantPizza({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<RestaurantPizza> restaurantpizza = [
  RestaurantPizza(image: [
    "https://static.toiimg.com/photo/53110049.cms",
    "https://www.thursdaynightpizza.com/wp-content/uploads/2022/06/veggie-pizza-featured-image-3.png",
    "https://sipbitego.com/wp-content/uploads/2021/08/Pepperoni-Pizza-Recipe-Sip-Bite-Go.jpg",
    "https://ooni.com/cdn/shop/articles/20220211142347-margherita-9920_ba86be55-674e-4f35-8094-2067ab41a671.jpg?crop=center&height=800&v=1644590192&width=800",
    "https://sallysbakingaddiction.com/wp-content/uploads/2014/03/Homemade-BBQ-Chicken-Pizza.jpg",
    "https://www.jessicagavin.com/wp-content/uploads/2020/07/hawaiian-pizza-16-1200.jpg",
  ], title: [
    "Cheese Pizza",
    "Veggie Pizza",
    "Pepperoni Pizza",
    "Margherita Pizza",
    "BBQ Chicken Pizza",
    "Hawaiian Pizza",
  ], price: [
    "Rs.549",
    "Rs.500",
    "Rs.700",
    "Rs.600",
    "Rs.750",
    "Rs.600",
  ])
];
