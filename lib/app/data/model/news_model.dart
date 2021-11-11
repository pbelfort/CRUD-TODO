import 'dart:convert';

class NewsModel {
  NewsModel({
    required this.id,
    required this.image,
    this.title,
    this.text,
  });

  final int id;
  final String image;
  final String? title;
  final String? text;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'title': title,
      'text': text,
    };
  }

  factory NewsModel.fromMap(Map<String, dynamic> map) {
    return NewsModel(
      id: map['id'],
      image: map['image'],
      title: map['title'],
      text: map['text'],
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsModel.fromJson(String source) =>
      NewsModel.fromMap(json.decode(source));
}
