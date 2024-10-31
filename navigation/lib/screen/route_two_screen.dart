import 'package:flutter/material.dart';
import 'package:navigation/layout/default_layout.dart';
import 'package:navigation/screen/route_three_screen.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;

    return DefaultLayout(
      title: 'RouteTwoScreen',
      children: [
        Text(
          arguments.toString(),
          textAlign: TextAlign.center,
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Pop'),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              '/three',
              arguments: 11111,
            );
          },
          child: Text('Push Route Three'),
        ),
        OutlinedButton(
          /// [HomeScreen, RouteOneScreen, RouteTwoScreen]
          /// push - [HomeScreen, RouteOneScreen, RouteTwoScreen, RouteThreeScreen]
          /// pushReplacement - [HomeScreen, RouteOneScreen, RouteThreeScreen]
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (BuildContext context) {
                    return RouteThreeScreen();
                  },
                  settings: RouteSettings(
                    arguments: 999,
                  )),
            );
          },
          child: Text('Push Replacement'),
        ),
        OutlinedButton(
          /// [HomeScreen, RouteOneScreen, RouteTwoScreen]
          /// push - [HomeScreen, RouteOneScreen, RouteTwoScreen, RouteThreeScreen]
          /// pushReplacement - [HomeScreen, RouteOneScreen, RouteThreeScreen]
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(
              '/three',
              arguments: 999,
            );
          },
          child: Text('Push Replacement Named'),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
              '/three',
              (route) {
                /// 만약에 삭제 할거면(Route stack) false 반환
                /// 만약에 삭제 안할거면 true 반환
                return route.settings.name == '/';
              },
              arguments: 999,
            );
          },
          child: Text('Push Named And Remove Until'),
        )
      ],
    );
  }
}
