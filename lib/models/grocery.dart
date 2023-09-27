// ignore_for_file: public_member_api_docs, sort_constructors_first
class Grocery {
  final String image;
  final String name;
  final String price;
  Grocery({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<Grocery> groceries = [
  Grocery(
      image: "https://cdn.britannica.com/94/151894-050-F72A5317/Brown-eggs.jpg",
      name: 'Eggs',
      price: 'Rs.520 per crate'),
  Grocery(
      image:
          "https://www.mcqueensdairies.co.uk/wp-content/uploads/2023/02/U010-McQUEENS-PRODUCTS-007-scaled.jpg",
      name: 'Milk',
      price: 'Rs.300 per gallon'),
  Grocery(
      image:
          "https://m.media-amazon.com/images/I/61TV2t0w32L._AC_UF1000,1000_QL80_.jpg",
      name: "Pasta",
      price: 'Rs.210'),
  Grocery(
      image:
          "https://media.istockphoto.com/id/160356158/photo/fruits-and-veggies-in-wood-box-with-white-backdrop.jpg?s=612x612&w=0&k=20&c=WMWJuSBYbXtk7gfGCb3FkI2Eycd_2TkwQv8W34rUAQY=",
      name: "Vegetables",
      price: "Rs.540/Basket"),
  Grocery(
      image: "https://m.media-amazon.com/images/I/41qKsYfG5+L.jpg",
      name: "Bread",
      price: "Rs.100"),
  Grocery(
      image:
          "https://nimbusbazar.com/wp-content/uploads/2022/08/Gyan-premium-basmati-rice-20kg.jpg",
      name: "Rice",
      price: 'Rs.725'),
  Grocery(
      image:
          "https://img.freepik.com/premium-vector/popcorn-striped-tub_157999-54.jpg?w=2000",
      name: "Popcorn",
      price: "Rs.125"),
  Grocery(
      image:
          "https://images.squarespace-cdn.com/content/v1/5a00e71a2278e7a804e532cf/1657806296352-IZ2XTGFMRYT8JXJNITSX/healthy-halal-meat-online-uk-delivery-LAMB-BONELESS-meat-halal-meat-delivery-fresh-meat-uk.png?format=1000w",
      name: "Lamb Meat",
      price: "Rs.450/kg"),
];
