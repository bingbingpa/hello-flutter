import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_number_generator/constant/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Header(),
              _Body(),
              _Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({super.key});

  @override
  Widget build(BuildContext context) {
    /// 제목과 아이콘 버튼이 있는곳
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '랜덤숫자 생성기',
          style: TextStyle(
              color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w700),
        ),
        IconButton(
            color: redColor, onPressed: () {}, icon: Icon(Icons.settings))
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    /// 숫자가 있는곳
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [123, 456, 789]
            .map((e) => e.toString().split(''))
            .map((e) => Row(
                children: e
                    .map((number) => Image.asset(
                          'asset/img/$number.png',
                          width: 50.0,
                          height: 70.0,
                        ))
                    .toList()))
            .toList(),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return

        /// 버튼이 있는곳
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: redColor, foregroundColor: Colors.white),
            onPressed: () {},
            child: Text('생성하기!'));
  }
}
