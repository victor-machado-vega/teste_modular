import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
// import 'package:teste_modular/app/main_dev.dart';
import 'package:teste_modular/app/modules/home/home_page.dart';
import 'package:teste_modular/app/modules/home/home_store.dart';
import 'package:teste_modular/app/modules/home/pages/page1.dart';
import 'package:teste_modular/app/modules/home/pages/page2.dart';
import 'package:teste_modular/app/modules/home/second/second_module.dart';
import 'package:teste_modular/app/modules/home/second/second_page.dart';
import 'package:teste_modular/app/modules/home/test/test_page.dart';
import 'package:teste_modular/app/modules/start/start_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: StartModule()),
    ChildRoute('/home', child: (_, args) => HomePage(), children: [
      // ChildRoute('/page1', child: (context, args) => Page1()),
      // ChildRoute('/page2', child: (context, args) => Page2()),
      // ChildRoute('/page3', child: (context, args) => Page2()),
      ChildRoute('/page1', child: (context, args) => InternalPage(title: 'page 1', color: Colors.red)),
      ChildRoute('/page2', child: (context, args) => InternalPage(title: 'page 2', color: Colors.amber)),
      ChildRoute('/page3', child: (context, args) => InternalPage(title: 'page 3', color: Colors.green)),
    ]),
    // ChildRoute('/page1', child: (context, args) => Page1()),
    // ChildRoute('/page2', child: (context, args) => Page2()),
    // ChildRoute(SecondModule.route, child: (_, args) => SecondPage()),
  ];
}
