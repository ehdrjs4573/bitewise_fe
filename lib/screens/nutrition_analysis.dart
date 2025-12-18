import 'package:flutter/material.dart';

class NutritionAnalysisScreen extends StatelessWidget {
  const NutritionAnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 상단 헤더
        Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 10),
          child: const Text(
            '12월 18일 영양 분석',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),

        // 리스트 영역
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: const [
              // ✅ 첫 번째 카드
              MealAnalysisCard(
                title: 'image1',
                calories: 180,
                carbs: '42g',
                protein: '4.1g',
                fat: '0.0g',
              ),
              
              SizedBox(height: 16), // 카드 사이 간격

              // ✅ 두 번째 카드
              MealAnalysisCard(
                title: '컵라면',
                calories: 500,
                carbs: '72g',
                protein: '10g',
                fat: '19g',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// =======================================================
// ✅ 배경이 흰색인 카드 위젯
// =======================================================
class MealAnalysisCard extends StatelessWidget {
  final String title;
  final int calories;
  final String carbs;
  final String protein;
  final String fat;

  const MealAnalysisCard({
    super.key,
    required this.title,
    required this.calories,
    required this.carbs,
    required this.protein,
    required this.fat,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white, // ✅ 배경색 흰색 처리
        borderRadius: BorderRadius.circular(20), // 모서리 둥글게
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05), // 은은한 그림자
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 제목과 수정/삭제 버튼
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => print('$title 수정'),
                    child: const Text('수정', style: TextStyle(color: Color(0xFF2DB65A), fontSize: 14)),
                  ),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: () => print('$title 삭제'),
                    child: const Text('삭제', style: TextStyle(color: Colors.redAccent, fontSize: 14)),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(thickness: 1, height: 1), // 카드 내부 구분선
          const SizedBox(height: 12),
          
          // 영양 정보 상세
          _buildInfoRow('칼로리', '${calories}kcal'),
          _buildInfoRow('탄수화물', carbs),
          _buildInfoRow('단백질', protein),
          _buildInfoRow('지방', fat),
        ],
      ),
    );
  }

  // 영양 정보를 한 줄씩 그려주는 헬퍼 위젯
  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 15, color: Colors.black87)),
          Text(value, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}