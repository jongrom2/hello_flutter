// materail.dart 파일을 불러와야
// 플러터에서 기본 제공해주는 위젯 사용할 수 있습니다.
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('클릭'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('깡패고니',
                  style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue,
              ),),
              TextButton(
                //클릭 시 실행
                onPressed: () {},
                //스타일 지정
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                  ),
                child: Text('텍스트 버튼'),
              ),
              OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.red,
                  ),
                  child: Text('아웃라인드 버튼')
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: Text('엘레베이티드 버튼')
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                 ),
              ),
              GestureDetector(
                onTap: () {
                  print('on tap');
                },
                onDoubleTap: (){
                  print('on double tap');
                },
                onLongPress: (){
                  print('on Long Press');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  width: 100.0,
                  height: 100.0,
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}