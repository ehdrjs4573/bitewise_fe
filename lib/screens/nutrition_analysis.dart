import 'package:flutter/material.dart';

class NutritionAnalysisScreen extends StatelessWidget {
  const NutritionAnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFA1FFD1),
      child: const Center(
        child: Text(
          '영양 분석 화면\n(하드코딩)',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}