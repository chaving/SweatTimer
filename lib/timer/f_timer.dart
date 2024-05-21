import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sweat_timer/common/constants.dart';

class TimerView extends StatefulWidget {
  const TimerView({super.key});

  @override
  State<TimerView> createState() => _TimerViewState();
}

class _TimerViewState extends State<TimerView> {
  late Timer timer;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 타이머 영역
        Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 70,
              child: Text(
                "준비",
                style: TextStyle(fontSize: 60),
              ),
            ),
            const SizedBox(
              height: 200,
              child: Center(
                child: Text(
                  '00:00',
                  style: TextStyle(fontSize: 120),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(40, 50, 40, 0),
                  decoration: BoxDecoration(
                    color: AppColors.red.shade5,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 70,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: AppColors.green.shade5,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 140,
                        child: Text(
                          '1 라운드',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            '00:00',
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),

        Expanded(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 80,
                child: Row(
                  children: [
                    // 라운드
                    Expanded(
                      child: Center(
                        child: Container(
                          height: double.infinity,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink,
                          ),
                        ),
                      ),
                    ),

                    // 사이클
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.pink,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
