import 'package:flutter/cupertino.dart';

void main() {
  debugPrint("hello world");
  var maptest = {
    "key1": "hello",
    "key2": 12,
    "key3": 12.01,
  };

  maptest['key2'] = "hello flutter";
  debugPrint(maptest.toString());
  debugPrint(maptest['key2'].toString());
  print(maptest['key3']);

  var mapTest2 = Map(); //map literals
  mapTest2['name'] = 'raman';
  mapTest2['yoe'] = 2;
  mapTest2['rating'] = 4.2;

  print(mapTest2.isEmpty);
  print(mapTest2.isNotEmpty);
  print(mapTest2.keys);
  print(mapTest2.values);
  print(mapTest2.containsKey('name'));
  print(mapTest2.containsValue(2));
  print(mapTest2.length);
  print(mapTest2.remove('rating'));

  print(mapTest2);
}
