class RestaurantMomo {
  final List<String> image;
  final List<String> title;
  final List<String> price;
  RestaurantMomo({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<RestaurantMomo> restaurantmomo = [
  RestaurantMomo(
    image: [
      "https://www.archanaskitchen.com/images/archanaskitchen/1-Author/shaikh.khalid7-gmail.com/Chicken_Momos_Recipe_Delicious_Steamed_Chicken_Dumplings.jpg",
      "https://www.archanaskitchen.com/images/archanaskitchen/0-Archanas-Kitchen-Recipes/2019/Classic_Veg_Momo_Recipe_Dumplings_4.jpg",
      "https://www.manusmenu.com/wp-content/uploads/2013/04/3-Momo-7-1-of-1.jpg",
      "https://i.pinimg.com/originals/e1/14/d1/e114d1962cf043db96b866cf37ae8efc.jpg",
      "https://i0.wp.com/namaskarfoods.com/wp-content/uploads/2022/09/WhatsApp-Image-2022-09-04-at-3.06.55-AM.jpeg?fit=988%2C916&ssl=1",
      "https://www.archanaskitchen.com/images/archanaskitchen/0-Archanas-Kitchen-Recipes/2019/Classic_Veg_Momo_Recipe_Dumplings_4.jpg",
    ],
    title: [
      "Chicken Momo",
      "Veg Momo",
      "Buffalo Momo",
      "Kotheys Momo",
      "Chilli Momo",
      "Pork Momo",
    ],
    price: [
      "Rs.160",
      "Rs.140",
      "Rs.180",
      "Rs.250",
      "Rs.230",
      "Rs.200",
    ],
  ),
];
