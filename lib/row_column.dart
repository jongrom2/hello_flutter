import 'package:flutter/material.dart';

void main() {
  runApp(ColumnWidgetExample());
}
class ColumnWidgetExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              //빨간색 Container
              Container(
                height: 300.0,
                width: 300.0,
                color: Colors.red,
              ),
              Container(
                height: 250.0,
                width: 250.0,
                color: Colors.yellow,
              ),
              Container(
                height: 200.0,
                width: 200.0,
                color: Colors.blue,
              ),

            ],
          ),

          // Column(
          //   //주축 정렬 지정
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   //반대축 정렬 지정
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //
          //   children: [
          //     Expanded(
          //         //flex값을 제공하지 않으면 기본값은 1입니다.
          //         flex: 3,
          //
          //       //파란색 컨테이너
          //       child: Container(
          //         color: Colors.blue,
          //       ),
          //     ),
          //     Expanded(
          //
          //         //flex값을 제공하지 않으면 기본값은 1입니다.
          //         flex: 1,
          //       //빨간색 컨테이너
          //       child: Container(
          //         color: Colors.red,
          //       ),
          //     ),
              // Flexible(
              //   //flex는 남은 공간을 차지할 비율을 의미
              //   //flex값을 제공하지 않으면 기본값은 1입니다.
              //   flex: 1,
              //
              //   //빨간색 컨테이너
              //   child: Container(
              //     color: Colors.red,
              //   ),
              // ),

            // ],
          ),
        ),
      );

  }
}

class RowWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(

          //반대축에서 이동할 공간을 제공하기 위해 높이 최대로 설정
          height: double.infinity,
          child: Row(
            //주축 정렬 지정
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //반대축 정렬 지정
            crossAxisAlignment: CrossAxisAlignment.end,
            //넣고 싶은 위젯 입력
            children: [
              Container(
                height: 50.0,
                  width: 50.0,
                  color: Colors.red,
              ),
              const SizedBox(width: 12.0),
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.green,
              ),
              const SizedBox(width: 12.0),
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.blue,
              ),

            ],
          ),
        ),
      ),
    );
  }
}