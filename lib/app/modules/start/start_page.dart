import 'package:flutter_modular/flutter_modular.dart';

import 'package:teste_modular/app/modules/home/home_module.dart';
import 'package:teste_modular/app/modules/start/pages/boleto_page.dart';
import 'package:teste_modular/app/modules/start/pages/config_page.dart';
import 'package:teste_modular/app/modules/start/start_store.dart';
import 'package:flutter/material.dart';

import '../../navigator_keys.dart';
import '../home/home_page.dart';

class StartPage extends StatefulWidget {
  final String title;
  const StartPage({Key? key, this.title = 'StartPage'}) : super(key: key);
  @override
  StartPageState createState() => StartPageState();
}

class StartPageState extends ModularState<StartPage, StartStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: NavigatorKeys.navigatorKeySecond,
      body: PageView(
        controller: controller.pageController,
        children: <Widget>[
          // HomePage(),
          HomeModule(),
          BoletoPage(),
          ConfigPage(),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: controller.pageController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
                currentIndex: controller.pageController.page?.round() ?? 0,
                onTap: (index) {
                  controller.pageController.jumpToPage(index);
                },
                items: [
                  const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                  const BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_rounded), label: 'Boletos'),
                  const BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Config')
                ]);
          }),
    );
  }
}
