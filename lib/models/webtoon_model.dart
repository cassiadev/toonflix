class WebtoonModel {
  final String title, thumb, id;

  WebtoonModel({
    required this.title,
    required this.thumb,
    required this.id
  });

  WebtoonModel.fromJson(Map<String, dynamic> json) :
      title = json['title'],
      thumb = json['thumb'],
      id = json['id'];
  // 변수 선언을 late final String title, thumb, id;으로 하고 named constructor가 아닌 형태로 선언해도 되긴 하나, json으로 인스턴스를 만드는 특정 목적을 위한 별도 생성자를 만드느 게 더 널리 쓰임
}