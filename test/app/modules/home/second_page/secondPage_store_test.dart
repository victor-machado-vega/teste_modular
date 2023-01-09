import 'package:flutter_test/flutter_test.dart';
import 'package:teste_modular/app/modules/home/second_page/secondPage_store.dart';
 
void main() {
  late SecondPageStore store;

  setUpAll(() {
    store = SecondPageStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}