class RestaurantIndian {
  final List<String> image;
  final List<String> title;
  final List<String> price;
  RestaurantIndian({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<RestaurantIndian> restaurantindian = [
  RestaurantIndian(
    image: [
      "https://static.toiimg.com/thumb/63201465.cms?imgsize=78891&width=800&height=800",
      "https://www.licious.in/blog/wp-content/uploads/2022/03/shutterstock_1891229335-min.jpg",
      "https://kitchenofdebjani.com/wp-content/uploads/2023/04/easy-indian-chicken-curry-Recipe-for-beginners-Debjanir-rannaghar.jpg",
      "https://www.indianhealthyrecipes.com/wp-content/uploads/2021/03/matar-paneer.jpg",
      "https://healthynibblesandbits.com/wp-content/uploads/2020/01/Saag-Paneer-FF.jpg",
      "https://littlespicejar.com/wp-content/uploads/2016/02/Finger-Lickin-Butter-Chicken-14-720x720.jpg",
      "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/veg-pulao-recipe.jpg",
    ],
    title: [
      "Mutton Curry",
      "Fish Curry",
      "Chicken Curry",
      "Mattar Paneer",
      "Palak Paneer",
      "Butter Chicken",
      "Rice/Pulao",
    ],
    price: [
      "Rs.825",
      "Rs.735",
      "Rs.690",
      "Rs.450",
      "Rs.685",
      "Rs.550",
      "Rs.400",
    ],
  ),
];
