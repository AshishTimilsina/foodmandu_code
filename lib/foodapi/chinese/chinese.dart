// ignore_for_file: public_member_api_docs, sort_constructors_first
class Chinese {
  String? title;
  String? image;
  Chinese({
    this.title,
    this.image,
  });

  factory Chinese.fromJson(Map<String, dynamic> json) {
    return Chinese(
      image: json['image'],
      title: json['title'],
    );
  }
}
