// ignore_for_file: public_member_api_docs, sort_constructors_first
class Cocktail {
  String? id;
  String? title;
  String? difficulty;
  String? image;
  Cocktail({
    this.id,
    this.title,
    this.difficulty,
    this.image,
  });

  factory Cocktail.fromJson(Map<String, dynamic> json) {
    return Cocktail(
      id: json['id'],
      title: json['title'],
      difficulty: json['difficulty'],
      image: json['image'],
    );
  }
}
