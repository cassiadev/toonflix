import 'package:flutter/material.dart';

class WebtoonEpisodeModel extends StatelessWidget {
  final String id, title, rating, date;
  const WebtoonEpisodeModel(
      this.id,
      this.title,
      this.rating,
      this.date,
      {Key? key}) : super(key: key);

  WebtoonEpisodeModel.fromJson(Map<String, dynamic> json, {Key? key}) :
    id = json['id'],
    title = json['title'],
    rating = json['rating'],
    date = json['date'], super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
