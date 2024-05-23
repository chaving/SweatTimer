import 'package:flutter/material.dart';

import '../common/theme/color/common_app_colors.dart';

class NextTypeCard extends StatelessWidget {
  const NextTypeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.yellow,
      child: ListView.builder(
          reverse: false,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Align(
              child: Card(
                color: index == 0 ? Colors.red : Colors.blue,
                child: Container(
                  width: 150,
                  height: 50,
                  child: Text('Text ${index - 1}'),
                ),
              ),
              heightFactor: 1,
            );
          }),
    );

    // =====
    // return Container(
    //   color: Colors.red,
    //   child: Stack(
    //     children: [
    //       Container(
    //         width: double.infinity,
    //         height: 50,
    //         margin: const EdgeInsets.fromLTRB(40, 50, 40, 0),
    //         decoration: BoxDecoration(
    //           color: AppColors.red.shade5,
    //           borderRadius: BorderRadius.circular(10),
    //           boxShadow: [
    //             BoxShadow(
    //               color: Colors.black.withOpacity(0.2),
    //               blurRadius: 5.0,
    //               spreadRadius: 0.0,
    //               offset: const Offset(0, 7),
    //             ),
    //           ],
    //         ),
    //         child: Row(
    //           children: [
    //             Container(
    //               width: 115,
    //               margin: const EdgeInsets.only(right: 23),
    //               child: const Text(
    //                 '1 라운드',
    //                 textAlign: TextAlign.right,
    //                 style: TextStyle(fontSize: 22),
    //               ),
    //             ),
    //             const Expanded(
    //               child: Center(
    //                 child: Text(
    //                   '00:00',
    //                   style: TextStyle(fontSize: 35),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         width: double.infinity,
    //         height: 70,
    //         margin: const EdgeInsets.symmetric(horizontal: 20),
    //         decoration: BoxDecoration(
    //           color: AppColors.green.shade5,
    //           borderRadius: BorderRadius.circular(10),
    //           boxShadow: [
    //             BoxShadow(
    //               color: Colors.black.withOpacity(0.3),
    //               blurRadius: 5.0,
    //               spreadRadius: 0.0,
    //               offset: const Offset(0, 7),
    //             )
    //           ],
    //         ),
    //         child: const Row(
    //           children: [
    //             SizedBox(
    //               width: 140,
    //               child: Text(
    //                 '1 라운드',
    //                 textAlign: TextAlign.right,
    //                 style: TextStyle(fontSize: 25),
    //               ),
    //             ),
    //             Expanded(
    //               child: Center(
    //                 child: Text(
    //                   '00:00',
    //                   style: TextStyle(fontSize: 40),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    // =====
  }
}
