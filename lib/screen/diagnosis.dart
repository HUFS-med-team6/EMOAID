// 아이와 부모님의 언어 및 정서 평가를 선택하는 화면입니다
// 해당하는 아이콘을 누르면 해당 평가 첫화면으로 넘어갑니다.

import 'package:bridze/screen/diagnosis_face/diagnosis_kid_11.dart';
import 'package:bridze/diagnosis_face2/diagnosis_kid_20.dart';
import 'package:bridze/screen/diagnosis_kid.dart';
import 'package:bridze/screen/diagnosis_mother/diagnosis_mother_1.dart';
import 'package:bridze/screen/login2.dart';
import 'package:bridze/widgets/containerbutton.dart';
import 'package:bridze/widgets/imagebutton.dart';
import 'package:flutter/material.dart';

class DiagnosisScreen extends StatelessWidget {
  const DiagnosisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Login2Page(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/diag001.png',
            fit: BoxFit.cover,
            width: 1440,
            height: 1024,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 220,
              left: 20,
            ),
            child: Column(
              children: <Widget>[
                const Text(
                  '',
                  style: TextStyle(
                    fontFamily: 'BMJUA',
                    fontSize: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        child: ImageButton(
                            imageAsset: 'assets/images/animal.png',
                            label: '동물들과 함께!',
                            onPressed: () {
                              Navigator.pushNamed(context, '/diagnosis_mother');
                            }),
                      ),
                      const SizedBox(width: 40),
                      // Flexible(
                      //   flex: 2,
                      //   child: SizedBox(
                      //     width: 300,
                      //     height: 200,
                      //     child: ContainerButton(
                      //         labelText: '언어평가 >',
                      //         subLabelText: 'đánh giá ngôn ngữ',
                      //         onPressed: () {
                      //           Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //               builder: (context) =>
                      //                   const DiagnosisKidPage(),
                      //             ),
                      //           );
                      //         },
                      //         isParentButton: false),
                      //   ),
                      // ),
                      const SizedBox(width: 40),
                      Flexible(
                        flex: 2,
                        child: SizedBox(
                          width: 300,
                          height: 200,
                          child: ContainerButton(
                              labelText: '감정 평가 >',
                              subLabelText: '버튼을 눌러 주세요.',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const DiagnosisKid20Page(
                                      avrScore: '',
                                    ),
                                  ),
                                );
                              },
                              isParentButton: false),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Flexible(
                    //   flex: 1,
                    //   child: ImageButton(
                    //       imageAsset: ('assets/images/animal.png'),
                    //       label: '',
                    //       onPressed: () {
                    //         Navigator.pushNamed(context, '/diagnosis_mother');
                    //       }),
                    // ),
                    const SizedBox(width: 40),
                    // Flexible(
                    //   flex: 2,
                    //   child: SizedBox(
                    //     width: 300,
                    //     height: 200,
                    //     child: ContainerButton(
                    //         labelText: '감정 평가 >',
                    //         subLabelText: '동물 친구들과 표정을 지어봐요',
                    //         onPressed: () {
                    //           Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //               builder: (context) =>
                    //                   const DiagnosisMother1Page()),
                    //           );
                    //         },
                    //         isParentButton: true),
                    //   ),
                    // ),
                    const SizedBox(width: 40),
                    Flexible(
                      flex: 2,
                      child: Image.asset(
                        'assets/images/camera_info.png',
                        width: 280,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
