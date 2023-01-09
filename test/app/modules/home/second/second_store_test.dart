import 'package:flutter_test/flutter_test.dart';
import 'package:teste_modular/app/modules/home/second/second_store.dart';
 
void main() {
  late SecondStore store;

  setUpAll(() {
    store = SecondStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}