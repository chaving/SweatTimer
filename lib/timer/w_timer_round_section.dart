import 'package:flutter/material.dart';
import 'package:sweat_timer/timer/w_timer_round_info_box.dart';

import '../common/theme/color/common_app_colors.dart';

class TimerRoundSection extends StatelessWidget {
  const TimerRoundSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        // 라운드
        RoundInfoBox(
          title: '라운드',
          valueColor: AppColors.blue,
        ),

        SizedBox(width: 10),

        RoundInfoBox(
          title: '사이클',
          valueColor: AppColors.raspberry,
        ),
      ],
    );
  }
}
