import 'package:flutter/material.dart';

class CalorieDisplay extends StatelessWidget {
  final int currentCalories;
  final int targetCalories;

  const CalorieDisplay({
    super.key,
    required this.currentCalories,
    required this.targetCalories,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      // ✅ 1. Column을 Row로 변경하여 가로로 배치합니다.
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // 가로로 중앙 정렬
        // ✅ 2. 글자 크기가 다른 텍스트들의 아랫부분을 깔끔하게 정렬합니다.
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            '$currentCalories',
            style: const TextStyle(
              fontSize: 60, // 현재 칼로리는 큰 글씨 유지
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          // ✅ 3. '/목표 kcal' 텍스트를 바로 옆에 배치합니다.
          Text(
            '/$targetCalories kcal',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xFF3D8D66),
            ),
          ),
        ],
      ),
    );
  }
}
