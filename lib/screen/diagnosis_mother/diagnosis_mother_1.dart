// 부모님의 언어 평가를 설명하는 시작화면입니다.
// 오른쪽 하단에 화살표 버튼을 눌러 다음 페이지로 넘어갑니다.

import 'package:bridze/screen/diagnosis_mother/diagnosis_mother_2.dart';
import 'package:flutter/material.dart';

class DiagnosisMother1Page extends StatelessWidget {
  const DiagnosisMother1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEF3F6),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 30,
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/camera.png',
                ),
                const SizedBox(width: 10),
                const Text(
                  "감정 평가",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Rowdies',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, top: 30),
            child: Text(
              "지금부터 감정 평가를 시작하겠습니다.\n화면에 나오는 감정을 얼굴로 표현해 주세요!",
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'BMJUA',
                color: Color(0xff000000),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, top: 30),
            child: Text(
              "몸을 움직이지 않고 얼굴만 화면에 나올 수 있도록 합니다",
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Sriracha',
                color: Color(0xff8EB5FF),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding:
                    const EdgeInsets.fromLTRB(0, 0, 40, 40), // Add spacing here
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DiagnosisMother2Page()));
                  },
                  child: Image.asset(
                    "assets/images/arrows.png",
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
