// ignore_for_file: public_member_api_docs, sort_constructors_first
class Cake {
  String? id;
  String? title;
  String? image;
  Cake({
    this.id,
    this.title,
    this.image,
  });

  factory Cake.fromJson(Map<String, dynamic> json) {
    return Cake(
      id: json['id'],
      image: json['image'],
      title: json['title'],
    );
  }
}
