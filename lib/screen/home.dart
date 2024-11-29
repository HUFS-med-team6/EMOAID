import 'dart:async';
import 'package:bridze/diagnosis_home_2.dart';
import 'package:flutter/material.dart';
import '../widgets/audio_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  //토리찌의 음성을 재생합니다.
  MyAudioPlayer myAudioPlayer = MyAudioPlayer();
  bool isPlaying = false;
  String greetingText =
      '안녕 ? 우리는 동물 친구들이야 !\n우리 얼굴 표정 짓기 놀이 하자~~\n우리가 말하는 기분에 맞게 표정을 지어보는 거야!\n그러면 내가 기분과 표정이 잘 맞는지 알려줄게!\n잘 할 수 있지?\n홈으로 가서 평가 버튼을 누르면 시작해~';

  void toggleAudio() {
    setState(() {
      isPlaying = !isPlaying;
    });

    if (isPlaying) {
      myAudioPlayer.toggleAudio();
    } else {
      myAudioPlayer.pause();
    }
  }

  @override
  void dispose() {
    myAudioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: toggleAudio,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/home001.png',
              fit: BoxFit.cover,
              width: 1440,
              height: 1024,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 480, top: 30.0),
              child: Text("평가 과정 안내",
                  style: TextStyle(
                    fontFamily: 'BMJUA',
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: GestureDetector(
                onTap: toggleAudio,
                child: Image.asset(
                  isPlaying
                      ? 'assets/images/quiet.png'
                      : 'assets/images/audio.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Column(
                        children: [
                          Center(
                            child: Text.rich(
                              TextSpan(
                                text: greetingText,
                                style: const TextStyle(
                                  fontFamily: 'KCC',
                                  fontSize: 38,
                                  color: Colors.black,
                                ),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(right: 30, bottom: 30),
                child: GestureDetector(
                  onTap: () {
                    myAudioPlayer.dispose(); // Stop audio on skip image tap
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DiagnosisHome2Page()),
                    );
                  },
                  child: Image.asset('assets/images/skip.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
