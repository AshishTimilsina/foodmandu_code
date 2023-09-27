class RestaurantBurger {
  final List<String> image;
  final List<String> title;
  final List<String> price;
  RestaurantBurger({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<RestaurantBurger> restaurantburger = [
  RestaurantBurger(image: [
    "https://www.eatingbirdfood.com/wp-content/uploads/2022/04/cropped-turkey-burger-hero.jpg",
    "https://i.pinimg.com/736x/4f/e0/e6/4fe0e663734e76b3196f408af502650a.jpg",
    "https://i.ytimg.com/vi/a19EY3YNStA/maxresdefault.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHvNrofmenZboH3z_O1Ac9dNzqE448AZZZ6g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgtZ0YTZM01QQZMcVoNz8wlTCcrMw0kdqNMg&usqp=CAU",
    "https://s7d1.scene7.com/is/image/mcdonalds/DC_202006_0003_Cheeseburger_StraightBun_832x472:1-3-product-tile-desktop?wid=765&hei=472&dpr=off",
  ], title: [
    "Turkey burger",
    "Portobello mushroom burger",
    "Veggie burger",
    "Wild salmon burger",
    "Bean burger",
    "Cheeseburger",
  ], price: [
    "Rs.350",
    "Rs.500",
    "Rs.250",
    "Rs.450",
    "Rs.400",
    "Rs.350",
  ]),
];
