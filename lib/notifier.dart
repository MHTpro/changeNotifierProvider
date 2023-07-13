import 'package:flutter/material.dart';

//create a class for my ChangeNotifierProvider
class MyProvider extends ChangeNotifier {
  String name;
  MyProvider({
    required this.name,
  });

  //change the name
  changeName(String theName) {
    name = theName;

    //reBuild Ui (change the name in ui)
    notifyListeners();
  }
}
