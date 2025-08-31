import 'package:flutter/material.dart';

// 💡 상태를 관리하기 위해 StatefulWidget을 사용합니다.
class NextSetupScreen extends StatefulWidget {
  const NextSetupScreen({super.key});

  @override
  State<NextSetupScreen> createState() => _NextSetupScreenState();
}

class _NextSetupScreenState extends State<NextSetupScreen> {
  // 💡 사용자가 입력한 값을 저장할 상태 변수들을 선언합니다.
  String _calories = '2500kcal';
  String _carbs = '200g';
  String _protein = '100g';
  String _fat = '50g';

  // 💡 사용자가 입력한 값을 기반으로 다이얼로그를 보여주는 함수입니다.
  Future<void> _showEditDialog(BuildContext context, String label, String currentValue) async {
    final TextEditingController controller = TextEditingController(text: currentValue);

    return showDialog<void>(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(label),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(hintText: "새로운 값을 입력하세요"),
            keyboardType: TextInputType.number, // 숫자 키보드
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('취소', style: TextStyle(color: Colors.red)),
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
            ),
            TextButton(
              child: const Text('저장'),
              onPressed: () {
                // 👉 사용자가 입력한 값으로 상태를 업데이트합니다.
                setState(() {
                  final newValue = controller.text;
                  if (label == '목표 칼로리') {
                    _calories = newValue;
                  } else if (label == '목표 탄수화물') {
                    _carbs = newValue;
                  } else if (label == '목표 단백질') {
                    _protein = newValue;
                  } else if (label == '목표 지방') {
                    _fat = newValue;
                  }
                });
                Navigator.of(dialogContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  // 💡 UI를 그리는 build 메서드입니다.
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF98F6C8),
      body: SafeArea(
        // 💡 SingleChildScrollView를 Stack으로 감싸서 버튼을 화면에 고정시킵니다.
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '추천 계획 완성!\n직접 바꾸실 수도 있어요!',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: screenHeight * 0.04),

                    Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: const Text(
                          '기초대사량 : 2000kcal',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),

                    SizedBox(height: screenHeight * 0.1),

                    const Center(
                      child: Text(
                        '바이트와이즈가 추천하는\n하루 권장 영양성분',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    SizedBox(height: screenHeight * 0.05),

                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black12),
                      ),
                      child: Column(
                        children: [
                          _buildNutrientRow(context, '목표 칼로리', _calories),
                          const SizedBox(height: 16),
                          _buildNutrientRow(context, '목표 탄수화물', _carbs),
                          const SizedBox(height: 16),
                          _buildNutrientRow(context, '목표 단백질', _protein),
                          const SizedBox(height: 16),
                          _buildNutrientRow(context, '목표 지방', _fat),
                        ],
                      ),
                    ),
                    
                    // 💡 버튼 공간 확보를 위해 패딩을 추가합니다.
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
            
            // 👉 뒤로 가기 버튼을 추가합니다.
            Positioned(
              bottom: 30,
              left: 30,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                backgroundColor: Colors.grey[400], // 회색으로 설정
                child: const Icon(Icons.arrow_back, color: Colors.white),
              ),
            ),

            // 다음 버튼
            Positioned(
              bottom: 30,
              right: 30,
              child: FloatingActionButton(
                onPressed: () {
                  // 👉 MaterialPageRoute 대신 라우트 이름을 사용하여 HomeScreen으로 이동합니다.
                  Navigator.pushNamed(context, '/home');
                },
                backgroundColor: const Color(0xFF2DB65A),
                child: const Icon(Icons.arrow_forward, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 💡 이전에 만들어 둔 위젯을 재활용합니다.
  Widget _buildNutrientRow(BuildContext context, String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16),
        ),
        Row(
          children: [
            Text(
              value,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 8),
            TextButton(
              onPressed: () {
                // 👉 수정 다이얼로그를 띄우는 함수를 호출합니다.
                _showEditDialog(context, label, value);
              },
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF2DB65A),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('목표 수정'),
            ),
          ],
        ),
      ],
    );
  }
}
