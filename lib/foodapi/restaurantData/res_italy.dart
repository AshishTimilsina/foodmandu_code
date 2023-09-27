class RestaurantItaly {
  final List<String> image;
  final List<String> title;
  final List<String> price;
  RestaurantItaly({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<RestaurantItaly> restaurantitaly = [
  RestaurantItaly(title: [
    "Lasagne alla Bolognese",
    "Fettuccine al Pomodoro",
    "Gnocchi di Patate",
    "Pizza Margherita",
    "Spaghetti",
  ], image: [
    "https://www.granarolo.it/system/granarolo_consumer/attachments/data/000/001/606/original/lasagne-alla-bolognese.jpg?1490627827",
    "https://www.justalittlebitofbacon.com/wp-content/uploads/2020/02/pasta-al-pomodoro-for-rc.jpg",
    "https://www.cucchiaio.it/content/cucchiaio/it/ricette/2009/11/ricetta-gnocchi-patate/_jcr_content/imagePreview.img10.jpg/1442231308900.jpg",
    "https://images.prismic.io/eataly-us/ed3fcec7-7994-426d-a5e4-a24be5a95afd_pizza-recipe-main.jpg?auto=compress,format",
    "https://www.inspiredtaste.net/wp-content/uploads/2023/01/Spaghetti-with-Meat-Sauce-Recipe-Video.jpg",
  ], price: [
    "Rs.685",
    "Rs.735",
    "Rs.690",
    "Rs.890",
    "Rs.685"
  ]),
];
