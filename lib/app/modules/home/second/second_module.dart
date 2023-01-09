import 'package:flutter/src/widgets/framework.dart';
import 'package:teste_modular/app/modules/home/second/second_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SecondModule extends WidgetModule {
  static const route = '/second';
  @override
  final List<Bind> binds = [
    // Bind.lazySingleton((i) => SecondStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(route, child: (_, args) => SecondPage()),
  ];

  @override
  Widget get view => SecondPage();
}
