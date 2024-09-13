import 'package:flutter/material.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget { //StatelessWidget 선언
  @override
  Widget build(BuildContext context) {//위젯의 UI구현
    // TODO: implement build
    return MaterialApp( //항상 최상단에 입력되는 위젯.
      home: Scaffold(   //항상 두 번째로 입력되는 위젯
        body: Container(

          decoration: BoxDecoration(
            color: Color(0xFFF99321),
          ),
          child:
              Row(
                //중앙축 정렬
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Column(
                  //중앙축 정렬
                  mainAxisAlignment: MainAxisAlignment.center,

                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 200.0,
                    ),
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(
                          Colors.red
                      ),
                    ),
                  ]
                ),
          ]
        ),
        )
      ),
    );
  }
}