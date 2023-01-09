import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_modular/app/modules/home/pages/page1.dart';
import 'package:teste_modular/app/modules/home/pages/page2.dart';
import 'package:teste_modular/app/modules/home/second/second_module.dart';
import 'home_store.dart';

import 'home_page.dart';
import 'second/second_page.dart';
import 'test/test_page.dart';

class HomeModule extends WidgetModule {
  static final GlobalKey<NavigatorState> navigatorKeyHome = GlobalKey();

  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/home', child: (_, args) => HomePage(), children: []),
    // ChildRoute('/page1', child: (context, args) => Page1()),
    // ChildRoute('/page2', child: (context, args) => Page2()),

    // ChildRoute('/page3', child: (context, args) => Page1()),
    // ChildRoute('/page4', child: (context, args) => Page2()),
    // ChildRoute('/new_home', child: (context, args) => NewHomePage(), children: [
    //   ChildRoute('/page1', child: (context, args) => InternalPage(title: 'page 1', color: Colors.red)),
    //   ChildRoute('/page2', child: (context, args) => InternalPage(title: 'page 2', color: Colors.amber)),
    //   ChildRoute('/page3', child: (context, args) => InternalPage(title: 'page 3', color: Colors.green)),
    // ]),
    // ChildRoute('/test', child: (_, args) => TestPage()),
    // ChildRoute(SecondModule.route, child: (_, args) => SecondPage()),

    // ModuleRoute(SecondModule.route, module: SecondModule()),
  ];

  @override
  Widget get view => HomePage();
}
