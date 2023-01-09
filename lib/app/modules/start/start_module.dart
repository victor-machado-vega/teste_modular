import 'package:teste_modular/app/modules/home/home_module.dart';
import 'package:teste_modular/app/modules/home/second/second_module.dart';
import 'package:teste_modular/app/modules/start/start_page.dart';
import 'package:teste_modular/app/modules/start/start_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../home/second/second_page.dart';

class StartModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => StartStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => StartPage()),
    // ChildRoute(SecondModule.route, child: (_, args) => SecondPage()),
    // ...HomeModule().routes
  ];
}
