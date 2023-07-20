

import 'package:flutter/foundation.dart';

class AppProvider extends ChangeNotifier{

   int _selectedIndex = 0;


  int get selectedIndex => _selectedIndex;

  setSelectedIndex (int index){
    _selectedIndex = index;
    notifyListeners();
  }

   late int _value;
   int get value => _value;

   void increaseValue(int stepValue, int upperLimit) {
     _value = _value == upperLimit ? upperLimit : value + stepValue;
     notifyListeners();
   }

   void decreaseValue(int stepValue, int lowerLimit) {
     _value = _value == lowerLimit ? lowerLimit : value - stepValue;
     notifyListeners();
   }


}