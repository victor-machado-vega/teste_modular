import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:teste_modular/app/modules/home/second_page/secondPage_module.dart';
 
void main() {

  setUpAll(() {
    initModule(SecondPageModule());
  });
}