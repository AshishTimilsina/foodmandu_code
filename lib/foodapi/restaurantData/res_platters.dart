class RestaurantPlatters {
  final List<String> image;
  final List<String> title;
  final List<String> price;
  RestaurantPlatters({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<RestaurantPlatters> restaurantplatters = [
  RestaurantPlatters(image: [
    "https://5.imimg.com/data5/JO/SX/GLADMIN-17925124/veg-platter-500x500.png",
    "https://imgmedia.lbb.in/media/2020/08/30/D2970315-24AC-4272-807F-1EFC27EF7385.jpg",
    "https://5.imimg.com/data5/SELLER/Default/2023/1/FY/CC/TI/50254357/assorted-veg-momo-platter-500x500.jpg",
    "https://healthyishfoods.com/wp-content/uploads/2021/06/Healthyish-Foods-567-720x1080.jpg",
    "https://flawlessfood.co.uk/wp-content/uploads/2022/09/Seafood-Platter-Fruits-de-Mer-271-of-381-Flawless.jpg",
    "https://thelazygrazer.com/cdn/shop/products/8852A961-CEEC-4996-A532-01210BCBA0BA_18676981-2bb4-4687-bb59-d0eea3ed5ad5.jpg?v=1620098142",
    "https://www.littlebroken.com/wp-content/uploads/2022/07/Fruit-Platter-01.jpg",
  ], title: [
    "Veg Platter",
    "Veg momo platter",
    "Chicken momo platter",
    "Chicken Platter",
    "Sea Food Platter",
    "Mixed Platter",
    "Fruits Platter",
  ], price: [
    "Rs.840",
    "Rs.735",
    "Rs.690",
    "Rs.890",
    "Rs.1650",
    "Rs.2000",
    "Rs.700",
  ])
];
