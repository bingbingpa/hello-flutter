import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  /// 배경 색상
                  backgroundColor: Colors.red,
                  disabledBackgroundColor: Colors.grey,
                  /// 배경 위의 색상
                  foregroundColor: Colors.white,
                  disabledForegroundColor: Colors.red,
                  /// 그림자 색상
                  shadowColor: Colors.black,
                  elevation: 10.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0
                  ),
                  // padding: EdgeInsets.all(32.0),
                  // side: BorderSide(
                  //   color: Colors.black,
                  //   width: 4.0
                  // ),
                  // minimumSize: Size(200,150)
                  // maximumSize: Size(100, 150)
                  // fixedSize: Size(100, 150)
                ),
                child: Text('Elevated Button')
            ),
            OutlinedButton(
                onPressed: (){},
                style: ButtonStyle(
                  /// Material State
                  ///
                  /// hovered - 호버링 상태 (마우스 커서를 올려놓은 상태) - 앱에서는 의미없다.
                  /// focused - 포커스 됐을때
                  /// pressed - 눌렀을 때
                  /// dragged - 드래그 됐을때
                  /// selected - 선택 됐을때
                  /// scrollUnder - 다른 컴포넌트 밑으로 스크롤링 됐을 때
                  /// disabled - 비활성화 됐을때
                  backgroundColor: MaterialStateProperty.all(
                    Colors.red
                  )
                ),
                child: Text('Outlined Button')
            ),
            TextButton(
                onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                      if(states.contains(MaterialState.pressed)) {
                        return Colors.red;
                      }
                      return Colors.black;
                    }
                  )
                ),
                child: Text('Text Button')
            ),
            OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  )
                ),
                child: Text('Outlined Button Shape')
            ),
            ElevatedButton.icon(
                onPressed: (){},
                icon: Icon(Icons.keyboard_alt_outlined),
                label: Text('키보드')
            )
          ],
        ),
      ),
    );
  }
}
