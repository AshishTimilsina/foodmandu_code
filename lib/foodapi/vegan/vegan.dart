// ignore_for_file: public_member_api_docs, sort_constructors_first
class Vegan {
  String? id;
  String? title;
  String? image;
  Vegan({
    this.id,
    this.title,
    this.image,
  });

  factory Vegan.fromJson(Map<String, dynamic> json) {
    return Vegan(
      id: json['id'],
      title: json['title'],
      image: json['image'],
    );
  }
}
