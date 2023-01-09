import 'package:flutter_test/flutter_test.dart';
import 'package:teste_modular/app/modules/start/start_store.dart';

void main() {
  late StartStore store;

  setUpAll(() {
    store = StartStore();
  });
}
