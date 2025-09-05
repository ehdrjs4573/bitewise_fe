import 'package:flutter/material.dart';

class MealCard extends StatelessWidget {
  final String mealType;
  final String imagePath;
  final VoidCallback onTap;

  const MealCard({
    super.key,
    required this.mealType,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: 150,
        decoration: BoxDecoration(
          color: const Color(0xFF2FC27B),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        // ✅ 1. Stack 위젯을 사용하여 요소들을 겹치도록 합니다.
        child: Stack(
          children: [
            // ✅ 2. '아침', '점심' 등 텍스트를 왼쪽 아래에 배치합니다.
            Positioned(
              bottom: 16,
              left: 16,
              child: Text(
                mealType,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),

            // ✅ 3. 식단 아이콘 이미지를 왼쪽 위에 배치합니다.
            Positioned(
              top: 16,
              left: 16,
              child: Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imagePath,
                ),
              ),
            ),

            // ✅ 4. '+' 버튼 이미지를 오른쪽 위에 배치합니다.
            Positioned(
              top: 16,
              right: 16,
              child: SizedBox(
                width: 45, // 플러스 아이콘 크기 조절
                height: 45,
                child: Image.asset(
                  'assets/images/white_plus.png', // 👈 여기에 가지고 계신 플러스 아이콘 png 파일 경로를 넣어주세요!
                  color: Colors.white, // 흰색으로 보이게 처리
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

