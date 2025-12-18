import 'package:flutter/material.dart';

// 위젯 및 모델 경로 (프로젝트 구조에 맞게 자동 수정됨)
import '../camera_screen.dart'; 
import '../../models/ai_mode.dart'; 
import '../nutrition_analysis.dart';

import 'widgets/date_selector.dart';
import 'widgets/calorie_display.dart';
import 'widgets/macro_progress_bar.dart';
import 'widgets/meal_card.dart';
import 'widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTabIndex = 1; // 0: 음식AI, 1: 홈, 2: 영양분석

  // 상태 값들
  DateTime _selectedDate = DateTime.now();
  final int _targetCalories = 2400;
  int _currentCalories = 680;
  final int _targetCarbs = 300;
  int _currentCarbs = 114;
  final int _targetProtein = 120;
  int _currentProtein = 14;
  final int _targetFat = 80;
  int _currentFat = 9;

  // AI 선택 다이얼로그 호출 함수
  void showAiSelectDialog() {
    showDialog(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.4),
      builder: (dialogContext) {
        return Center(
          child: Container(
            width: 260,
            padding: const EdgeInsets.symmetric(vertical: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _DialogButton(
                  text: '음식 AI 검사',
                  onTap: () {
                    Navigator.pop(dialogContext);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CameraScreen(mode: AiMode.food),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                _DialogButton(
                  text: '영양 성분 OCR',
                  onTap: () {
                    Navigator.pop(dialogContext);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CameraScreen(mode: AiMode.ocr),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _onDateSelected(DateTime newDate) {
    setState(() {
      _selectedDate = newDate;
    });
  }

  void _onMealCardTapped(String mealType) {
    showAiSelectDialog();
  }

  String _getImagePathForMeal(String mealType) {
    switch (mealType) {
      case '아침': return 'assets/images/image-removebg-preview (3).png';
      case '점심': return 'assets/images/lunch.png';
      case '저녁': return 'assets/images/moon.png';
      case '간식': return 'assets/images/cherry.png';
      default: return 'assets/images/fork_logo_white.png';
    }
  }

  // 📸 사진이 들어가는 특수 식사 카드 빌더
  Widget _buildPhotoMealCard(String label, String imagePath) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),
              BlendMode.darken,
            ),
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationX(3.14159),
              child: Image.asset(
                imagePath,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () => _onMealCardTapped(label),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [Shadow(blurRadius: 2, color: Colors.black)],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Icon(Icons.add, size: 32, color: Colors.white),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFA1FFD1),
      // ✅ 하단 네비게이션 바 고정 위치
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedTabIndex,
        onTap: (index) {
          if (index == 0) {
            showAiSelectDialog();
          } else {
            setState(() {
              _selectedTabIndex = index;
            });
          }
        },
      ),
      body: SafeArea(
        child: _selectedTabIndex == 2
            ? const NutritionAnalysisScreen() // 📊 영양 분석 화면으로 전환
            : Column( // 🏠 홈 화면
                children: [
                  DateSelector(
                    selectedDate: _selectedDate,
                    onDateSelected: _onDateSelected,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: Column(
                        children: [
                          SizedBox(height: screenHeight * 0.01),
                          CalorieDisplay(
                            currentCalories: _currentCalories,
                            targetCalories: _targetCalories,
                          ),
                          SizedBox(height: screenHeight * 0.03),
                          
                          // 아침 & 점심 (사진형 카드)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildPhotoMealCard('아침', 'assets/images/852AD93F-41EE-498B-9BD4-758F78246D73.png'),
                              _buildPhotoMealCard('점심', 'assets/images/jinramen.png'),
                            ],
                          ),
                          const SizedBox(height: 10),
                          
                          // 저녁 & 간식 (기본형 카드)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MealCard(
                                mealType: '저녁',
                                imagePath: _getImagePathForMeal('저녁'),
                                onTap: () => _onMealCardTapped('저녁'),
                              ),
                              MealCard(
                                mealType: '간식',
                                imagePath: _getImagePathForMeal('간식'),
                                onTap: () => _onMealCardTapped('간식'),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.05),

                          // 영양성분 프로그레스 바 영역
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                MacroProgressBar(label: '탄수화물', current: _currentCarbs, target: _targetCarbs, unit: 'g'),
                                const SizedBox(height: 20),
                                MacroProgressBar(label: '단백질', current: _currentProtein, target: _targetProtein, unit: 'g'),
                                const SizedBox(height: 20),
                                MacroProgressBar(label: '지방', current: _currentFat, target: _targetFat, unit: 'g'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

// 📌 다이얼로그 전용 버튼 위젯
class _DialogButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const _DialogButton({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 14),
        margin: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: const Color(0xFFA1FFD1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}