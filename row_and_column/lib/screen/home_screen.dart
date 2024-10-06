import 'package:flutter/material.dart';
import 'package:row_and_column/const/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: colors.map((e) => Container(
                height: 50.0,
                width: 50.0,
                color: e,
              )).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.orange,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: colors.map((e) => Container(
                height: 50.0,
                width: 50.0,
                color: e,
              )).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.green,
                )
              ],
            )
          ],
        ),
        // child: Container(
          // color: Colors.black,
          // width: double.infinity,
          // height: double.infinity,
          // child: Row(
          // child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisSize: MainAxisSize.max,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            // children: colors
            //     .map((e) => Container(
            //           height: 50.0,
            //           width: 50.0,
            //           color: e,
            //         ))
            //     .toList(),
            // children: [
            //   Flexible(
            //     flex: 2,
            //     fit: FlexFit.tight,
            //     child: Container(
            //       height: 50.0,
            //       width: 50.0,
            //       color: Colors.red,
            //     ),
            //   ),
            //   Expanded(
            //     child: Container(
            //       height: 50.0,
            //       width: 50.0,
            //       color: Colors.orange,
            //     ),
            //   ),
            //   Expanded(
            //     child: Container(
            //       height: 50.0,
            //       width: 50.0,
            //       color: Colors.yellow,
            //     ),
            //   )
            // ],
          // ),
        // ),
      ),
    );
  }
}
