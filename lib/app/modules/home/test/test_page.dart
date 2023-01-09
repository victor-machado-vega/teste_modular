import 'package:flutter/material.dart';
import 'package:teste_modular/app/navigator_keys.dart';

import '../second/second_module.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
