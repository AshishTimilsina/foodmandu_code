// ignore_for_file: public_member_api_docs, sort_constructors_first
class Spotlight {
  final List<String> foodname;
  final List<String> foodimages;
  final String reslogo;
  final String resname;
  final String resaddress;
  final List<String> amount;
  Spotlight({
    required this.amount,
    required this.foodname,
    required this.foodimages,
    required this.reslogo,
    required this.resname,
    required this.resaddress,
  });
}

List<Spotlight> spotlight = [
  Spotlight(
    foodname: [
      'CHICKEN BIRYANI',
      'CHICKEN TANDOORI MOMO',
      'PEPPERONI PIZZA',
      'SMOKED CHICKEN',
      'FLAT WHITE SHITAKE'
    ],
    amount: [
      'Rs.730',
      'Rs.250',
      'Rs.530',
      'Rs.450',
      'Rs.500',
    ],
    foodimages: [
      'assets/spotlight/biryani.jpg',
      'assets/spotlight/momo.jpg',
      'assets/spotlight/pizza.jpg',
      'assets/spotlight/smoke.jpg',
      'assets/spotlight/whitepizza.jpg',
    ],
    reslogo: 'assets/spotlight/logo.png',
    resname: 'Mad Over Pizza',
    resaddress: 'Maitri Tole, Mid Baneshwar',
  )
];
