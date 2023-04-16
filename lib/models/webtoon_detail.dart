import 'package:flutter/material.dart';

class WebtoonDetailModel extends StatelessWidget {
  final String title, about, genre, age;
  const WebtoonDetailModel({
    Key? key,
    required this.title,
    required this.about,
    required this.genre,
    required this.age}) : super(key: key);

  WebtoonDetailModel.fromJson(Map<String, dynamic> json) :
        title = json['title'],
        about = json['about'],
        genre = json['genre'],
        age = json['age'];

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
