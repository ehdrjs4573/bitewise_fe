import 'package:flutter/material.dart';
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
  // 상태 관리를 위한 변수들
  DateTime _selectedDate = DateTime.now();
  final int _targetCalories = 2237;
  int _currentCalories = 0;
  final int _targetCarbs = 319;
  int _currentCarbs = 145;
  final int _targetProtein = 120;
  int _currentProtein = 20;
  final int _targetFat = 62;
  int _currentFat = 4;

  void _onDateSelected(DateTime newDate) {
    setState(() {
      _selectedDate = newDate;
      // TODO: 선택된 날짜에 따라 데이터를 업데이트하는 로직 추가
    });
  }

  void _onMealCardTapped(String mealType) {
    // TODO: 식단 카드 클릭 시 동작 추가 (예: 식단 추가 화면으로 이동)
    print('Tapped on $mealType meal card');
  }

  String _getImagePathForMeal(String mealType) {
    switch (mealType) {
      case '아침':
        return 'assets/images/image-removebg-preview (3).png';
      case '점심':
        return 'assets/images/lunch.png';
      case '저녁':
        return 'assets/images/moon.png';
      case '간식':
        return 'assets/images/cherry.png';
      default:
        return 'assets/images/fork_logo_white.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFA1FFD1),
      body: SafeArea(
        child: Column(
          children: [
            DateSelector(
              selectedDate: _selectedDate,
              onDateSelected: _onDateSelected,
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                child: Column(
                  children: [
                    // ✅ 1. 칼로리 디스플레이와 달력 사이의 공백을 줄였습니다.
                    SizedBox(height: screenHeight * 0.01),
                    CalorieDisplay(
                      currentCalories: _currentCalories,
                      targetCalories: _targetCalories,
                    ),

                    // ✅ 2. MealCard와 칼로리 디스플레이 사이의 공백을 설정했습니다.
                    SizedBox(height: screenHeight * 0.03),

                    // ✅ 3. MealCard를 다시 프로그레스 바 위로 올렸습니다. (원래 위치)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MealCard(
                          mealType: '아침',
                          imagePath: _getImagePathForMeal('아침'),
                          onTap: () => _onMealCardTapped('아침'),
                        ),
                        MealCard(
                          mealType: '점심',
                          imagePath: _getImagePathForMeal('점심'),
                          onTap: () => _onMealCardTapped('점심'),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.01),
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

                    // ✅ 4. 프로그레스 바와 MealCard 사이의 공백을 설정했습니다.
                    SizedBox(height: screenHeight * 0.05),

                    // ✅ 5. "바이트와이즈..." 텍스트는 삭제된 채로, 프로그레스 바가 마지막에 위치합니다.
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
                          MacroProgressBar(
                            label: '탄수화물',
                            current: _currentCarbs,
                            target: _targetCarbs,
                            unit: 'g',
                          ),
                          const SizedBox(height: 20),
                          MacroProgressBar(
                            label: '단백질',
                            current: _currentProtein,
                            target: _targetProtein,
                            unit: 'g',
                          ),
                          const SizedBox(height: 20),
                          MacroProgressBar(
                            label: '지방',
                            current: _currentFat,
                            target: _targetFat,
                            unit: 'g',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomNavBar(
              onTap: (index) {
                // TODO: 내비게이션 기능 구현
                print('Tapped on navigation item at index $index');
              },
            ),
          ],
        ),
      ),
    );
  }
}

