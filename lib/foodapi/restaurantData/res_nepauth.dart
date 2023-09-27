class RestaurantNepaliAuth {
  final List<String> image;
  final List<String> title;
  final List<String> price;
  RestaurantNepaliAuth({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<RestaurantNepaliAuth> restaurantnepaliauth = [
  RestaurantNepaliAuth(image: [
    "https://i0.wp.com/lifeinnepal.com/wp-content/uploads/2021/12/Nepali-Thali.jpg?fit=1200%2C847&ssl=1",
    "https://4.bp.blogspot.com/-U2YMB2pVKZc/U3Q36eosCgI/AAAAAAAABXk/lZxHggvhdmM/s1600/DSC04152.JPG",
    "https://newarirecipeshut.com/wp-content/uploads/2020/09/chatamari.jpg",
    "https://www.bhaktapur.com/wp-content/uploads/2020/03/131443993_104481628209020_6966202492758208102_n.png",
    "https://washburnreview.org/wp-content/uploads/2023/03/sel-roti.jpeg",
  ], title: [
    "Nepali Thali Set",
    "Bhatmas Sadeko",
    "Chatamari",
    "Yomari",
    "Selroti",
  ], price: [
    "Rs.700",
    "Rs.300",
    "Rs.150",
    "Rs.30",
    "Rs.50",
  ]),
];
