import 'package:flutter/material.dart';

import '../models/tasbih_model.dart';

class TasbihDatabase with ChangeNotifier {
  List<Tasbih> tasbihList = [
    Tasbih(name: 'سبحان الله', maxNumber: 33),
    Tasbih(name: 'الحمد لله', maxNumber: 33),
    Tasbih(name: 'لا إله إلا الله', maxNumber: 33),
    Tasbih(name: 'الله أكبر', maxNumber: 33),
  ];

  void addTasbih(String name, int number) {
    tasbihList.insert(
      0,
      Tasbih(
        name: name,
        maxNumber: number,
      ),
    );
  }

  void deleteTasbih(String byName){
    tasbihList.removeWhere((element) => element.name == byName);
  }
}
