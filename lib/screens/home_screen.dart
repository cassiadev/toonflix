import 'dart:async';
import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/services/api_services.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key); // Future 타입의 클래스 변수가 선언된 이상 key를 가진 이 생성자는 더이상 const가 될 수 없음

  Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("오늘의 웹툰",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        foregroundColor: Colors.green,
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: FutureBuilder(  // FutureBuilder를 통해 Future와 builder함수를 받아 보다 편하게 UI에 비동기 데이터를 표현할 수 있음
        future: webtoons,
        builder: (context, snapshot) {  //  snapshot를 통해서는 Future가 데이터를 받았는지, 오류는 안 났는지 등 상태를 알 수 있음
          if (snapshot.hasData) {
            return const Text("There is data!");
          }
          return const Text("Loading...");
        },
      ),
    );
  }
}

// class _HomeScreenState extends State<HomeScreen> {
//   static const twentyFiveMinutesToSeconds = 1500;
//   int totalSeconds = twentyFiveMinutesToSeconds;
//   bool isRunning = false;
//   int totalPomodoros = 0;
//   late Timer timer;
//
//   String format(int seconds) {
//     var duration = Duration(seconds: seconds);
//     var minutePart = duration.toString().split('.').first.split(':')[1];
//     var secondPart = duration.toString().split('.').first.split(':').last;
//     return '$minutePart:$secondPart';
//   }
//
//   void onStartPressed() {
//     timer = Timer.periodic(
//       const Duration(seconds: 1),
//       onTick, // onTick()으로 괄호를 넣어버리면 지금 함수를 실행한다는 의미가 돼버린다. 거기에 Timer.periodic은 뒤의 변수로 void Function(Timer)를 원함
//     );
//     setState(() {
//       isRunning = true;
//     });
//   }
//
//   void onTick(Timer timer) {
//     setState(() {
//       if (totalSeconds == 0) {
//         setState(() {
//           totalPomodoros++;
//           isRunning = false;
//           totalSeconds = twentyFiveMinutesToSeconds;
//         });
//         timer.cancel();
//       } else {
//         totalSeconds--;
//       }
//     });
//   }
//
//   void onPausePressed() {
//     timer.cancel();
//     setState(() {
//       isRunning = false;
//     });
//   }
//
//   void onStopPressed() {
//     onPausePressed();
//     totalSeconds = twentyFiveMinutesToSeconds;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).backgroundColor,
//       body: Column(
//         children: [
//           Flexible(
//             flex: 1,
//             child: Container(
//               alignment: Alignment.bottomCenter,
//               child: Text(format(totalSeconds),
//                 style: TextStyle(
//                   color: Theme.of(context).cardColor,
//                   fontSize: 89,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//           ),
//           Flexible(
//             flex: 3,
//             child: Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   IconButton(
//                     iconSize: 120,
//                     color: Theme.of(context).cardColor,
//                     onPressed: isRunning? onPausePressed : onStartPressed,
//                     icon: Icon(isRunning? Icons.pause_circle_outline : Icons.play_circle_outline),
//                   ),
//                   IconButton(
//                     iconSize: 120,
//                     color: Theme.of(context).cardColor,
//                     onPressed: onStopPressed,
//                     icon: const Icon(Icons.stop_circle_outlined),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Flexible(
//             flex: 1,
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Theme.of(context).cardColor,
//                       borderRadius: const BorderRadius.vertical(
//                         top: Radius.circular(50),
//                         bottom: Radius.zero,
//                       ),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('Pomodoros',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.w600,
//                             color: Theme.of(context).textTheme.headline1?.color,
//                           ),
//                         ),
//                         Text('$totalPomodoros',
//                           style: TextStyle(
//                             fontSize: 58,
//                             fontWeight: FontWeight.w600,
//                             color: Theme.of(context).textTheme.headline1?.color,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
