// ignore_for_file: public_member_api_docs, sort_constructors_first
class Pizza {
  num? id;
  String? img;
  String? name;
  String? description;
  Pizza({
    this.id,
    this.name,
    this.img,
    this.description,
  });

  factory Pizza.fromJson(Map<String, dynamic> json) {
    return Pizza(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      img: json['img'],
    );
  }
}
