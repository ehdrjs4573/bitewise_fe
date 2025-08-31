import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( // ✅ 원래의 내용은 여기에 넣기
      children: [
        Container(
          width: 412,
          height: 917,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 412,
                  height: 917,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: const Color(0xFFA1FFD1)),
                  child: Stack(
                    children: [
                      Positioned(
                        left: -12,
                        top: 820,
                        child: Container(
                          width: 435,
                          height: 114,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                              Positioned(
                                left: 358,
                                top: 19,
                                child: Container(
                                  width: 27.40,
                                  height: 13,
                                  child: Stack(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 883,
                        child: Container(
                          width: 412,
                          height: 34,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 412,
                                  height: 34,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 139,
                                        top: 21,
                                        child: Container(
                                          width: 134,
                                          height: 5,
                                          decoration: ShapeDecoration(
                                            color: Colors.black,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(100),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 34,
                        top: 749,
                        child: Container(
                          width: 80,
                          height: 9,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 80,
                                  height: 9,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.00, 0.50),
                                      end: Alignment(1.00, 0.50),
                                      colors: [const Color(0xFF3D8D66), const Color(0x21578C72)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 168,
                        top: 749,
                        child: Container(
                          width: 80,
                          height: 9,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 80,
                                  height: 9,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.00, 0.50),
                                      end: Alignment(1.00, 0.50),
                                      colors: [const Color(0xFF3D8D66), const Color(0x21578C72)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 108,
                        top: 227,
                        child: SizedBox(
                          width: 46,
                          height: 40,
                          child: Text(
                            '0',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.w700,
                              height: 0.37,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 102,
                        top: 227,
                        child: SizedBox(
                          width: 256,
                          height: 60,
                          child: Text(
                            '/2237kcal ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xFF3D8D66),
                              fontSize: 30,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.w700,
                              height: 0.73,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 166,
                        top: 749,
                        child: Container(
                          width: 80,
                          height: 9,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 80,
                                  height: 9,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.00, 0.50),
                                      end: Alignment(1.00, 0.50),
                                      colors: [const Color(0xFF3D8D66), const Color(0x21578C72)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 294,
                        top: 749,
                        child: Container(
                          width: 80,
                          height: 9,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 80,
                                  height: 9,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.00, 0.50),
                                      end: Alignment(1.00, 0.50),
                                      colors: [const Color(0xFF3D8D66), const Color(0x21578C72)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 34,
                        top: 717,
                        child: SizedBox(
                          width: 76,
                          height: 28,
                          child: Text(
                            '탄수화물',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'jsMath-cmbx10',
                              fontWeight: FontWeight.w700,
                              height: 1.29,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 166,
                        top: 718,
                        child: SizedBox(
                          width: 76,
                          height: 28,
                          child: Text(
                            '단백질',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'jsMath-cmbx10',
                              fontWeight: FontWeight.w700,
                              height: 1.29,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 301,
                        top: 719,
                        child: SizedBox(
                          width: 76,
                          height: 28,
                          child: Text(
                            '지방',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'jsMath-cmbx10',
                              fontWeight: FontWeight.w700,
                              height: 1.29,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: -36,
                        top: 772,
                        child: Container(
                          width: 222,
                          height: 25,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 222,
                                  height: 25,
                                  child: Text(
                                    '0/319g',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF3D8D66),
                                      fontSize: 20,
                                      fontFamily: 'NanumGothic',
                                      fontWeight: FontWeight.w700,
                                      height: 1.10,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 97,
                        top: 772,
                        child: Container(
                          width: 222,
                          height: 25,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 222,
                                  height: 25,
                                  child: Text(
                                    '0/120g',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF3D8D66),
                                      fontSize: 20,
                                      fontFamily: 'NanumGothic',
                                      fontWeight: FontWeight.w700,
                                      height: 1.10,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 228,
                        top: 772,
                        child: Container(
                          width: 222,
                          height: 25,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 222,
                                  height: 25,
                                  child: Text(
                                    '0/62g',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF3D8D66),
                                      fontSize: 20,
                                      fontFamily: 'NanumGothic',
                                      fontWeight: FontWeight.w700,
                                      height: 1.10,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: -10,
                        child: Container(
                          width: 412,
                          height: 167,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 149,
                        top: 73,
                        child: SizedBox(
                          width: 124,
                          height: 67,
                          child: Text(
                            '7/5\n',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.w700,
                              height: 1.10,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 4,
                        top: 73,
                        child: SizedBox(
                          width: 124,
                          height: 67,
                          child: Text(
                            '7/4\n',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.w700,
                              height: 1.10,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 284,
                        top: 73,
                        child: SizedBox(
                          width: 124,
                          height: 67,
                          child: Text(
                            '7/6\n',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.w700,
                              height: 1.10,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                      ),
                   // 🔻 어제 버튼
Positioned(
  left: 42,
  top: 104,
  child: Container(
    padding: const EdgeInsets.all(10),
    decoration: ShapeDecoration(
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          '어제',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'NanumGothic',
            fontWeight: FontWeight.w700,
            height: 0.71,
            letterSpacing: 3,
          ),
        ),
      ],
    ),
  ),
),

// 🔻 오늘 버튼
Positioned(
  left: 186,
  top: 104,
  child: Container(
    padding: const EdgeInsets.all(10),
    decoration: ShapeDecoration(
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          '오늘',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'NanumGothic',
            fontWeight: FontWeight.w700,
            height: 0.71,
            letterSpacing: 3,
          ),
        ),
      ],
    ),
  ),
),

// 🔻 내일 버튼
Positioned(
  left: 319,
  top: 104,
  child: Container(
    padding: const EdgeInsets.all(10),
    decoration: ShapeDecoration(
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          '내일',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'NanumGothic',
            fontWeight: FontWeight.w700,
            height: 0.71,
            letterSpacing: 3,
          ),
        ),
      ],
    ),
  ),
),
                      Positioned(
                        left: 27,
                        top: 311,
                        child: Container(
                          width: 165,
                          height: 151,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 165,
                                  height: 151,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF2FC27B),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 37,
                        top: 321,
                        child: Container(
                          width: 57.06,
                          height: 63,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/57x63"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 126,
                        top: 329,
                        child: Container(
                          width: 45,
                          height: 45,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 19,
                                top: 0,
                                child: Container(
                                  width: 7,
                                  height: 45,
                                  decoration: BoxDecoration(color: const Color(0xFFFFFCFC)),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 19,
                                child: Container(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-1.57),
                                  height: 45,
                                  decoration: BoxDecoration(color: const Color(0xFFFFFCFC)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23,
                        top: 425,
                        child: Container(
                          width: 85,
                          height: 27,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 85,
                                  height: 27,
                                  child: Text(
                                    '아침',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'jsMath-cmbx10',
                                      fontWeight: FontWeight.w700,
                                      height: 1.10,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 218,
                        top: 311,
                        child: Container(
                          width: 166,
                          height: 151,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF2FC27B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 220,
                        top: 314,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/70x70"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 318,
                        top: 329,
                        child: Container(
                          width: 45,
                          height: 45,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 19,
                                top: 0,
                                child: Container(
                                  width: 7,
                                  height: 45,
                                  decoration: BoxDecoration(color: const Color(0xFFFFFCFC)),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 19,
                                child: Container(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-1.57),
                                  height: 45,
                                  decoration: BoxDecoration(color: const Color(0xFFFFFCFC)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 215,
                        top: 425,
                        child: Container(
                          width: 85,
                          height: 27,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 85,
                                  height: 27,
                                  child: Text(
                                    '점심',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'jsMath-cmbx10',
                                      fontWeight: FontWeight.w700,
                                      height: 1.10,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 218,
                        top: 493,
                        child: Container(
                          width: 166,
                          height: 150,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF2FC27B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 230,
                        top: 506,
                        child: Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/56x56"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 318,
                        top: 511,
                        child: Container(
                          width: 45,
                          height: 45,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 19,
                                top: 0,
                                child: Container(
                                  width: 7,
                                  height: 45,
                                  decoration: BoxDecoration(color: const Color(0xFFFFFCFC)),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 19,
                                child: Container(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-1.57),
                                  height: 45,
                                  decoration: BoxDecoration(color: const Color(0xFFFFFCFC)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 215,
                        top: 614,
                        child: Container(
                          width: 85,
                          height: 27,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 85,
                                  height: 27,
                                  child: Text(
                                    '간식',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'jsMath-cmbx10',
                                      fontWeight: FontWeight.w700,
                                      height: 1.10,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27,
                        top: 493,
                        child: Container(
                          width: 165,
                          height: 150,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF2FC27B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 43,
                        top: 509,
                        child: Container(
                          width: 49,
                          height: 49,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/49x49"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 126,
                        top: 511,
                        child: Container(
                          width: 45,
                          height: 45,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 19,
                                top: 0,
                                child: Container(
                                  width: 7,
                                  height: 45,
                                  decoration: BoxDecoration(color: const Color(0xFFFFFCFC)),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 19,
                                child: Container(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-1.57),
                                  height: 45,
                                  decoration: BoxDecoration(color: const Color(0xFFFFFCFC)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23,
                        top: 614,
                        child: Container(
                          width: 85,
                          height: 27,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 85,
                                  height: 27,
                                  child: Text(
                                    '저녁',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'jsMath-cmbx10',
                                      fontWeight: FontWeight.w700,
                                      height: 1.10,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 177,
                        top: 879,
                        child: SizedBox(
                          width: 58,
                          height: 29,
                          child: Text(
                            '홈',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xFF3D8D66),
                              fontSize: 14,
                              fontFamily: 'jsMath-cmbx10',
                              fontWeight: FontWeight.w700,
                              height: 1.57,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23,
                        top: 877,
                        child: SizedBox(
                          width: 90,
                          height: 29,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '음식',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.91),
                                    fontSize: 14,
                                    fontFamily: 'jsMath-cmbx10',
                                    fontWeight: FontWeight.w700,
                                    height: 1.57,
                                    letterSpacing: -0.41,
                                  ),
                                ),
                                TextSpan(
                                  text: ' AI ',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.91),
                                    fontSize: 14,
                                    fontFamily: 'NanumGothic',
                                    fontWeight: FontWeight.w700,
                                    height: 1.57,
                                    letterSpacing: -0.41,
                                  ),
                                ),
                                TextSpan(
                                  text: '검사',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity( 0.91),
                                    fontSize: 14,
                                    fontFamily: 'jsMath-cmbx10',
                                    fontWeight: FontWeight.w700,
                                    height: 1.57,
                                    letterSpacing: -0.41,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 312,
                        top: 879,
                        child: SizedBox(
                          width: 72,
                          height: 29,
                          child: Text(
                            '영양 분석',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.91),
                              fontSize: 14,
                              fontFamily: 'NanumGothic',
                              fontWeight: FontWeight.w700,
                              height: 1.57,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 49,
                        top: 841,
                        child: Container(width: 34.19, height: 32),
                      ),
                      Positioned(
                        left: 189,
                        top: 840,
                        child: Container(
                          width: 36,
                          height: 36,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 48,
                        top: 842,
                        child: Container(
                          width: 40,
                          height: 36,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(width: 40, height: 36, child: Stack()),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 331,
                        top: 843,
                        child: Container(
                          width: 34,
                          height: 33,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 34,
                                  height: 33,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                          child: Stack(
                            children: [],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
}