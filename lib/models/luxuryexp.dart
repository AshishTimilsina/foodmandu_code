// ignore_for_file: public_member_api_docs, sort_constructors_first
class LuxuryExp {
  final String image;
  final String name;
  final String location;
  final String desc;
  final String foodimage;
  LuxuryExp({
    required this.foodimage,
    required this.desc,
    required this.image,
    required this.name,
    required this.location,
  });
}

List<LuxuryExp> luxexp = [
  LuxuryExp(
      foodimage:
          'https://images.unsplash.com/photo-1528207776546-365bb710ee93?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=340&q=80',
      image: 'assets/luxhotels/hyatt.jpeg',
      name: 'Hyatt Regency',
      location: 'Boudha',
      desc:
          'Rox Restaurant is the hotel\'s signature outlet featuring a show kitchen with wood-fired oven and serving multicuisine offerings.'),
  LuxuryExp(
      foodimage:
          'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=340&q=80',
      image: 'assets/luxhotels/zing.png',
      name: 'Zing by Hyatt Place',
      location: 'Soltimode',
      desc:
          'A fresh,vibrant ,retro-futuristic venue where your favourite flavors are edited from 21st century.'),
  LuxuryExp(
      foodimage:
          'https://images.unsplash.com/photo-1552566626-52f8b828add9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=340&q=80',
      image: 'assets/luxhotels/vivanta.jpeg',
      name: 'Vivanta Kathmandu',
      location: 'Jhamsikhel',
      desc:
          'Akari and Koko Named after the japanese word for light,Anari infuses Kathmandu fine dining scene with a potent dose of uber-trendy asian flavor.'),
  LuxuryExp(
      foodimage:
          'https://images.unsplash.com/photo-1502301103665-0b95cc738daf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=340&q=80',
      image: 'assets/luxhotels/aloft.jpg',
      name: 'Aloft Kathmandu',
      location: 'Thamel',
      desc:
          'The expansive All-Day Dining restaurant Nook,our approach is the style of a House kitchen..Creative and contemporary,the thought is simple with its own personality which is unmatchable in town.'),
  LuxuryExp(
    foodimage:
        'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80',
    image: 'assets/luxhotels/marriott.jpg',
    name: 'Kathmandu Marriott',
    location: 'Naxal',
    desc:
        'In house patisserie serving delectable gourmet sweets,baked goodies,fresh salad and other dainties.Refreshing beverages and juices available for the guest to enjoy and take away',
  ),
  LuxuryExp(
      foodimage:
          'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=300&q=80',
      desc:
          'A fresh,vibrant ,retro-futuristic venue where your favourite flavors are edited from 21st century.',
      image: 'assets/luxhotels/radisson.png',
      name: 'Radisson Hotel',
      location: 'Lazimpat'),
  LuxuryExp(
      foodimage:
          'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=340&q=80',
      desc:
          'Erma Restaurant & Ara Bar By Hotel Shambala is a multi cuisine restaurant featuring selected flavors from all over the world.The Continental meu includes variety of items in house.',
      image: 'assets/luxhotels/shambala.jpeg',
      name: 'Hotel Shambala',
      location: 'Bansbari'),
];
