import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget{

  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final int order;
  final _blackColor = const Color(0xFF1F2123);  // 앞에 _를 넣어주면 private 수식임

  const CurrencyCard({
    Key? key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    this.order = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, order * -20),
      child: Container(
        clipBehavior: Clip.hardEdge, //  아이콘 등이 overflow 될 시 해야 할 일을 정함
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                    style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(amount,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(code,
                        style: TextStyle(
                          color: isInverted? _blackColor.withOpacity(0.8) : Colors.white.withOpacity(0.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(  //  Transform.scale 안에 넣어줌으로써 아이콘 크기만 커지고 카드 크기는 그대로
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(-5, 12),  // Offset으로 아이콘의 위치좌표를 이동시킴
                  child: Icon(icon,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}