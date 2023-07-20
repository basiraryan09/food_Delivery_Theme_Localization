import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../views/stepper.dart';

class ItemProvider extends ChangeNotifier {
  final List<Item> _items = [
    Item(quantity: 0),
  ];

  List<Item> get items => _items;

  void increaseQuantity(int index) {
    _items[index].quantity++;
    notifyListeners();
  }

  void decreaseQuantity(int index) {
    if (_items[index].quantity > 0) {
      _items[index].quantity--;
      notifyListeners();
    }
  }
}

