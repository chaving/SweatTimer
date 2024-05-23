import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sweat_timer/common/constants.dart';
import 'package:sweat_timer/timer/w_next_type_card.dart';
import 'package:sweat_timer/timer/w_timer_round_section.dart';

class TimerView extends StatefulWidget {
  const TimerView({super.key});

  @override
  State<TimerView> createState() => _TimerViewState();
}

class _TimerViewState extends State<TimerView> {
  var timerIcon = Icons.play_arrow;
  var color = AppColors.grey.shade7;

  late Timer timer;
  int time = 0;
  bool isPlaying = false;

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
        Expanded(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Expanded(
                  flex: 1,
                  child: FittedBox(
                      child: Text(
                    "준비",
                  ))),
              Expanded(
                  flex: 2,
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: FittedBox(
                          child: Text(
                        format(time),
                      )))),
              const SizedBox(
                height: 0,
              ),
            ],
          ),
        ),

        const NextTypeCard(),

        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 25.0,
                spreadRadius: 5.0,
                offset: const Offset(0, 0),
              )
            ],
          ),
          child: Column(
            children: [
              //---------------------------------------
              // 남은 라운드, 사이클 정보
              const SizedBox(
                width: double.infinity,
                height: 80,
                child: TimerRoundSection(),
              ),

              const SizedBox(height: 15),
              //-------------------------
              // 시작 영역
              SizedBox(
                width: double.infinity,
                height: 100,
                child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          color: AppColors.blue,
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(10),
                          shape: const CircleBorder(),
                          child: const Icon(
                            Icons.play_arrow,
                            size: 40,
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 90,
                          height: 90,
                          child: Stack(
                            children: [
                              const SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: CircularProgressIndicator(
                                  value: 0.7,
                                  strokeWidth: 7,
                                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.raspberry),
                                ),
                              ),
                              Center(
                                  child: MaterialButton(
                                      onPressed: () {
                                        click();
                                      },
                                      color: AppColors.raspberry,
                                      textColor: Colors.white,
                                      padding: const EdgeInsets.all(10),
                                      shape: const CircleBorder(),
                                      child: Icon(
                                        timerIcon,
                                        size: 55,
                                      )))
                            ],
                          ),
                        ),
                        const Spacer(),
                        MaterialButton(
                          onPressed: () {},
                          color: AppColors.blue,
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(10),
                          shape: const CircleBorder(),
                          child: const Icon(
                            Icons.refresh_rounded,
                            size: 35,
                          ),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);

    var startIndex = seconds >= 3600 ? 0 : 2;
    return duration.toString().split('.').first.substring(startIndex);
  }

  void click() {
    setState(() {
      isPlaying = !isPlaying;

      if (isPlaying) {
        timerIcon = Icons.pause;
        startTimer();
      } else {
        timerIcon = Icons.play_arrow;
        stopTimer();
      }
    });
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        time++;
      });
    });
  }

  void stopTimer() {
    timer.cancel();
  }
}
