// ignore_for_file: public_member_api_docs, sort_constructors_first
class Exclusive {
  final String foodimages;
  final String logo;
  final String resname;
  final String location;
  final String fooditem;
  final String amount;
  Exclusive({
    required this.amount,
    required this.foodimages,
    required this.logo,
    required this.resname,
    required this.location,
    required this.fooditem,
  });
}

List<Exclusive> exclusive = [
  Exclusive(
    amount: 'Rs. 550.00',
    foodimages: 'assets/exclusiveimages/queen.jpg',
    logo: 'assets/exclusiveimages/queenlogo.png',
    resname: 'Queens',
    location: 'Sanepa',
    fooditem: 'Creampie | American',
  ),
  Exclusive(
      amount: 'Rs. 200.00',
      foodimages: 'assets/exclusiveimages/burger.jpg',
      logo: 'assets/exclusiveimages/burgerlogo.png',
      resname: 'Burger Shack',
      location: 'Kamaladi | Jawalakhel',
      fooditem: 'Burger | FastFood'),
  Exclusive(
      amount: 'Rs. 350.00',
      foodimages: 'assets/exclusiveimages/hotdog.jpg',
      logo: 'assets/exclusiveimages/expresslogo.png',
      resname: 'Sub Express',
      location: 'Bakhundol | Thamel',
      fooditem: 'Fast'),
  Exclusive(
      amount: 'Rs. 200.00',
      foodimages: 'assets/exclusiveimages/donut.jpg',
      logo: 'assets/exclusiveimages/workshoplogo.png',
      resname: 'The Workshop Eatery',
      location: 'Bakhundol',
      fooditem: 'CreamDonut'),
  Exclusive(
      amount: 'Rs. 700.00',
      foodimages: 'assets/exclusiveimages/sushi.jpg',
      logo: 'assets/exclusiveimages/kotologo.png',
      resname: 'Koto',
      location: 'Duarbarmarg | Lazimpat | Pulchowk',
      fooditem: 'Asian | Japanese'),
  Exclusive(
      amount: 'Rs. 450.00',
      foodimages: 'assets/exclusiveimages/letrio.jpg',
      logo: 'assets/exclusiveimages/letriologo.jpeg',
      resname: 'Koto',
      location: 'Duarbarmarg | Lazimpat | Pulchowk',
      fooditem: 'Asian | Japanese'),
];
