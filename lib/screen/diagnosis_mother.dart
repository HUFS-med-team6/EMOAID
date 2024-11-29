import 'package:flutter/material.dart';
import 'diagnosis_mother/diagnosis_mother_1.dart';

// ignore: camel_case_types
class DiagnosisMotherPage extends StatelessWidget {
  const DiagnosisMotherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 226, 255, 209), // Set the background color to light blue
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
                  "이제 감정 평가를 시작합니다",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Rowdies',
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, top: 30),
            child: Text(
              "감정 평가를 시작합니다.\n화면에 나오는 감정을 얼굴로 표현해 주세요",
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
                fontFamily: 'Sriracha',
                fontSize: 40,
                color: Color(0xff8EB5FF),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              top: 30,
            ),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DiagnosisMother1Page()));
                },
                child: Image.asset("assets/images/right.png")),
          ),
        ],
      ),
    );
  }
}
