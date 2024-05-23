import 'package:flutter/material.dart';
import 'package:sweat_timer/timer/vertical_card_pager.dart';

class NextTypeCard extends StatelessWidget {
  const NextTypeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      // color: Colors.pink,
      child: VerticalCardPager(
        initialPage: 0,
        titles: ['가나다', '123', '1', '2', '3'],
        images: const [
          NextCard(color: Colors.red),
          NextCard(color: Colors.yellow),
          NextCard(color: Colors.green),
          NextCard(color: Colors.blue),
          NextCard(color: Colors.orange),
        ],
      ),
    );
  }

  static void changeStateOf() {
    print('야야');
  }
}

class NextCard extends StatelessWidget {
  final Color color;
  const NextCard({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}
