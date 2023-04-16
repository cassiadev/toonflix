import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../models/webtoon_episode_model.dart';

class Episode extends StatelessWidget {
  const Episode({
    Key? key,
    required this.episode,
    required this.webtoonId,
  }) : super(key: key);

  final WebtoonEpisodeModel episode;
  final String webtoonId;

  onButtonTap() async {
    // final url = Uri.parse("https//google.com"); await launchUrl(url); 안 쓰고 한 줄에 가능. 다만 url_launcher가 적용되어 있어야 함
    await launchUrlString("https://comic.naver.com/webtoon/detail?titleId=$webtoonId&no=${int.parse(episode.id) + 1}"); // episode,id 같이 변수명에 기호가 같이 들어가면 중괄호로 감싸줘야 함
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration (
          border: Border.all(
            color: Colors.green.shade400,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(20),
          color: Colors.green.shade300,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              offset: const Offset(2, 2),
              color: Colors.yellow.withOpacity(
                  0.5), // 그림자 색은 일단 빨간색 같이 튀는 걸로 해서 그림자가 생기는 양상을 정밀히 봐두는 것도 팁
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(episode.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const Icon(
                Icons.chevron_right_rounded,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}