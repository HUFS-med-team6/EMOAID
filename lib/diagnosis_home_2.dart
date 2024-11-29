import 'package:bridze/main.dart';
import 'package:flutter/material.dart';

class DiagnosisHome2Page extends StatelessWidget {
  const DiagnosisHome2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/home002.png',
            width: 1440,
            height: 1024,
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 270, top: 30.0),
            child: Text("EmoAid, 이렇게 하는 거야!",
                style: TextStyle(
                  fontFamily: 'BMJUA',
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                )),
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
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    "assets/images/finish_pink.png",
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
