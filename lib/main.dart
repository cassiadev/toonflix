import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(App());
}

// class App extends StatefulWidget{
//   @override
//   State<App> createState() => _AppState();
// }

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: const Color(0xFFE7626C),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }

  // bool showTitle = true;
  // void toggleTitle() {
  //   setState(() {
  //     showTitle = !showTitle;
  //   });
  // }
  //
  // int counter = 0;
  // List<int> numbers = [];
  // void onClicked() {
  //   setState(() { // State에 바뀐 데이터를 적용해서 화면에 표시하기 위해 setState() 함수가 꼭 필요함. 없으면 build()가 다시 실행되지 않아 연산에 의해 데이터가 변경중인데 화면에는 보이지 않게 됨
  //     counter++;  // 꼭 setState() 안에 있어야지만 Interactivity가 적용되는 것은 아니나, 가독성 면에서 봤을 때 안에 넣는 게 좋다
  //     numbers.add(numbers.length);
  //   });
  // }
  //
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     theme: ThemeData(
  //       textTheme: const TextTheme(
  //         titleLarge: TextStyle(
  //          color: Colors.red,
  //        ),
  //       ),
  //     ),
  //     home: Scaffold(
  //       backgroundColor: const Color(0xFFF4EDDB),
  //       body: Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             showTitle ? const MyLargeTitle() : const Text('nothing to show'),
  //             IconButton(
  //               onPressed: toggleTitle,
  //               icon: const Icon(Icons.remove_red_eye),
  //             ),
  //             Text('$counter',
  //               style: const TextStyle(
  //                 fontSize: 30,
  //               ),
  //             ),
  //             for(var n in numbers) Text('$n',),
  //             IconButton(
  //               iconSize: 40,
  //               onPressed: onClicked,
  //               icon: const Icon(
  //                   Icons.add_box_rounded,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

// class MyLargeTitle extends StatefulWidget {
//   const MyLargeTitle({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<MyLargeTitle> createState() => _MyLargeTitleState();
// }
//
// class _MyLargeTitleState extends State<MyLargeTitle> {
//   int count = 0;
//
//   @override
//   void initState() {  // initState()는 부모 요소에 의존하는 데이터의 초기화를 위해 종종 사용됨. 특별한 목적이 없으면 그냥 클래스 변수 선언을 해도 됨.
//     print('initState!');
//     super.initState();  // initState()는 항상 build()보다 먼저 호출되어야 하며 단 한 번만 호출됨. super.initState()도 있어야 됨
//   }
//
//   @override
//   void dispose() {  // dispose()는 위젯이 스크린에서 또 위젯트리에서 제거될 때 호출됨
//     print('dispose!');
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {  // context에는 위젯트리에 관한 정보, 즉 조상 요소들의 데이터가 모두 담겨 있다
//     print('build!');
//     return Text('My Large Title',
//       style: TextStyle(
//         fontSize: 30,
//         color: Theme.of(context).textTheme.titleLarge?.color, // titleLarge라는 것이 없을 때에 대비해 ?.나 아니면 확실히 있다는 의미로 !.를 붙여준다
//       ),
//     );
//   }
// }

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp( // 새 위젯을 만드는 건 클래스를 초기화(Initializing classes)하는 것
//       home: Scaffold( // 다수 위젯에서 home: body: appBar: 같이 named parameter를 쓰고 있음
//         backgroundColor: const Color(0xFF181818), // Color.fromARGB(255, 48, 48, 1)나 Color.fromRGBO(24, 24, 24, 1)로는 색상표에서 선택
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 80,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: const [
//                         Text('Hey, Selena',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 28,
//                             fontWeight: FontWeight.w800,
//                           ),
//                         ),
//                         Text('Welcome back',
//                           style: TextStyle(
//                             color: Color.fromRGBO(255, 255, 255, 0.8),
//                             fontSize: 18,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 70,
//                 ),
//                 Text('Total Balance',
//                   style: TextStyle(
//                     color: Colors.white.withOpacity(0.8),
//                     fontSize: 22,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 const Text('\$5 194 382',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 48,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: const [
//                     Button(
//                       text: 'Transfer',
//                       bgColor: Color(0xFFF1B33B),
//                       textColor: Colors.black,
//                     ),
//                     Button(
//                       text: 'Request',
//                       bgColor: Color(0xFF1F2123),
//                       textColor: Colors.white,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     const Text('Wallets',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 36,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     Text('View All',
//                       style: TextStyle(
//                         color: Colors.white.withOpacity(0.8),  // withOpacity값은 컴파일 시점에서 알기 힘든 값이기 때문에 children에 대한 const 수식을 해제하게 됨
//                         fontSize: 18,
//                       )
//                       ,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const CurrencyCard(
//                   name: 'Euro',
//                   code: 'EUR',
//                   amount: '6 428',
//                   icon: Icons.euro_rounded,
//                   isInverted: false,
//                 ),
//                 const CurrencyCard(
//                   name: 'Bitcoin',
//                   code: 'BTC',
//                   amount: '9 785',
//                   icon: Icons.currency_bitcoin,
//                   isInverted: true,
//                   order: 1,
//                 ),
//                 const CurrencyCard(
//                   name: 'Dollar',
//                   code: 'USD',
//                   amount: '428',
//                   icon: Icons.attach_money_outlined,
//                   isInverted: false,
//                   order: 2,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
