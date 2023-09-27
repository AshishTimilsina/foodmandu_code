// ignore_for_file: public_member_api_docs, sort_constructors_first
class Burger {
  String? name;
  String? images;
  String? desc;
  Burger({
    this.name,
    this.images,
    this.desc,
  });

  factory Burger.fromJson(Map<String, dynamic> json) {
    return Burger(
      name: json['name'],
      images: json['images'][0]['sm'],
      desc: json['desc'],
    );
  }
}
