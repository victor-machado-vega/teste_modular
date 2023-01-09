import 'package:flutter/material.dart';

import '../../../navigator_keys.dart';
import '../second/second_module.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    print('> Page1');
    return Scaffold(
      key: NavigatorKeys.navigatorKeyTest,
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(NavigatorKeys.navigatorKeyHome.currentContext ?? context, SecondModule.route);
            },
            child: Text('/second')),
      ),
    );
  }
}
