import 'package:flutter/material.dart';
import './shop_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> shopItems = {
    'Tomato': false,
    'Cucumber': false,
    'Garlic': false,
  };

  Map<String, String> images = {
    'Tomato':
        'https://cdn.pixabay.com/photo/2013/07/12/18/19/tomato-153272_1280.png',
    'Cucumber':
        'https://cdn.pixabay.com/photo/2012/02/29/11/58/cucumber-18742_1280.jpg',
    'Garlic':
        'https://cdn.pixabay.com/photo/2013/11/28/12/15/garlic-220495_1280.jpg',
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ultimate Shopping List'),
          shadowColor: Colors.amber,
        ),
        body: ListView(
          children: shopItems.keys.map((String key) {
            return ShopItem(key, images[key], shopItems[key], (bool value) {
              setState(() {
                shopItems[key] = value;
              });
            });
          }).toList(),
        ),
      ),
    );
  }
}
