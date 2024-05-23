import 'package:flutter/material.dart';

import '../common/theme/color/common_app_colors.dart';

class RoundInfoBox extends StatelessWidget {
  final String title;
  final Color valueColor;
  const RoundInfoBox({
    super.key,
    required this.title,
    required this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.grey.shade3,
          ),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Icon(
                      Icons.refresh,
                      size: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 7),
                      child: Text(title),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      child: Text(
                        '1 / 5',
                        style: TextStyle(fontSize: 12, color: AppColors.grey.shade7),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Center(
                      child: Container(
                          height: 10,
                          margin: const EdgeInsets.only(top: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: LinearProgressIndicator(
                            value: 0.5,
                            backgroundColor: Colors.white,
                            valueColor: AlwaysStoppedAnimation<Color>(valueColor),
                            borderRadius: BorderRadius.circular(5),
                          )))),
            ],
          ),
        ),
      ),
    );
  }
}
