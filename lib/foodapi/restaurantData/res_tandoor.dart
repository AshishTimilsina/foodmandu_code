class RestaurantTandoor {
  final List<String> image;
  final List<String> title;
  final List<String> price;
  RestaurantTandoor({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<RestaurantTandoor> restauranttandoor = [
  RestaurantTandoor(image: [
    "https://www.cubesnjuliennes.com/wp-content/uploads/2022/12/Tandoori-Chicken-Recipe.jpg",
    "https://www.krumpli.co.uk/wp-content/uploads/2019/03/BBQ-Tandoori-Fish-4.jpg",
    "https://static.toiimg.com/thumb/53194540.cms?imgsize=131267&width=800&height=800",
    "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/06/chicken-tikka-kebab.jpg",
    "https://www.licious.in/blog/wp-content/uploads/2022/05/shutterstock_1790057069-750x750.jpg",
    "https://www.cookwithmanali.com/wp-content/uploads/2015/07/Restaurant-Style-Recipe-Paneer-Tikka.jpg",
    "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/03/butter-naan.jpg",
  ], price: [
    "Rs.965/1600",
    "Rs.990",
    "Rs.1360",
    "Rs.750",
    "Rs.715",
    "Rs.750",
    "Rs.200"
  ], title: [
    "Chicken Tandoori",
    "Tandoor Trout Fish",
    "Tandoori Prawn",
    "Chicken Tikka",
    "Fish Tikka",
    "Paneer Tikka",
    "Tandoor Naan",
  ]),
];
