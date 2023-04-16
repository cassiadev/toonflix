import 'package:flutter/material.dart';
import 'package:toonflix/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;
  const Webtoon({
    Key? key,
    required this.title,
    required this.thumb,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector( // 탭 동작을 감지하는 위젯
      onTap: () {
        Navigator.push( // 애니메이션 효과를 제공하는 일종의 StatefulWidget
          context,
          MaterialPageRoute(  // route가 StatelessWidget인 DetailScreen을 애니메이션 효과로 감싸 스크린처럼 보이게 함
            builder: (context) =>
                DetailScreen(
                    title: title,
                    thumb: thumb,
                    id: id),
            // fullscreenDialog: true, // 바닥에서부터 이미지가 올라오는 효과. 돌아가는 버튼도 <가 아니라 ×가 됨
          ),
        );
      },
      child: Column(
        children: [
          Hero( // HomeScreen에서 카드를 클릭하면 이게 화면 중앙으로 끌려와서 DetailScreen을 보여주는 효과를 제공. id로 두 Hero의 tag를 연결
            tag: id,
            child: Container(
              width: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: const Offset(10, 10),
                    color: Colors.black.withOpacity(0.5), // 그림자 색은 일단 빨간색 같이 튀는 걸로 해서 그림자가 생기는 양상을 정밀히 봐두는 것도 팁
                  )
                ],
              ),
              child: Image.network(
                thumb,
                // flutter run -d chrome --web-renderer html
                headers: const {
                  "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36",
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(title,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
