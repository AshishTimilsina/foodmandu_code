// ignore_for_file: public_member_api_docs, sort_constructors_first
class Momo {
  final String image;
  final String name;
  final String location;
  Momo({
    required this.image,
    required this.name,
    required this.location,
  });
}

List<Momo> momos = [
  Momo(
      image: 'assets/momos/tandoori.jpg',
      name: 'Chicken Tandoori Momo',
      location: 'KTM Hunger Station'),
  Momo(
      image: 'assets/momos/steam.jpg',
      name: 'Cheese Stick Momo',
      location: 'Crust Pizza'),
  Momo(
      image: 'assets/momos/creamy.jpeg',
      name: 'Creamy Chicken  Momo',
      location: 'Attic'),
  Momo(
      image: 'assets/momos/turkish.png',
      name: 'Tavuk Manti',
      location: 'Turkish Kebab and Pizza'),
];
