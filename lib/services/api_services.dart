import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {  // 클래스 자체가 state를 다루지 않기 때문에 클래스 변수에는 static const, 메소드는 static 수식자를 부여
  static const String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body); // List<dynamic>은 없어도 되긴 함. json 형식이 dynamic 값으로 이루어진 리스트라는 점을 기억할 것
      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
        print(webtoon);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}