import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_number_generator/component/number_to_image.dart';
import 'package:random_number_generator/constant/color.dart';
import 'dart:math';

import 'package:random_number_generator/screen/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> numbers = [123, 456, 789];

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
              _Header(
                onPressed: onSettingIconPressed,
              ),
              _Body(
                numbers: numbers,
              ),
              _Footer(
                onPressed: generateRandomNumber,
              ),
            ],
          ),
        ),
      ),
    );
  }

  onSettingIconPressed() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return SettingScreen();
    }));
  }

  generateRandomNumber() {
    final rand = Random();
    final Set<int> newNumbers = {};
    while (newNumbers.length < 3) {
      newNumbers.add(rand.nextInt(1000));
    }
    setState(() {
      numbers = newNumbers.toList();
    });
  }
}

class _Header extends StatelessWidget {
  final VoidCallback onPressed;

  const _Header({super.key, required this.onPressed});

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
          color: redColor,
          icon: Icon(Icons.settings),
          onPressed: onPressed,
        )
      ],
    );
  }
}

class _Body extends StatelessWidget {
  final List<int> numbers;

  const _Body({required this.numbers, super.key});

  @override
  Widget build(BuildContext context) {
    /// 숫자가 있는곳
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: numbers.map((e) => NumberToImage(number: e)).toList(),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  final VoidCallback onPressed;

  const _Footer({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    /// 버튼이 있는곳
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: redColor, foregroundColor: Colors.white),
        child: Text('생성하기!'));
  }
}
