

import 'package:flutter/material.dart';

class ViewModel extends ChangeNotifier{
  String url = "";
  String animal = "";
  bool upPressed = false;
  bool downPressed = false;


  togglePressed(bool upPressed,bool downPressed){
    this.upPressed = upPressed;
    this.downPressed = downPressed;
    notifyListeners();
  }


  clearUrl(){
    url = "";
    notifyListeners();
  }

  selectAnimal(String animal){
    this.animal = animal;
    notifyListeners();
  }

  startUp(){
    url = "assets/animation/up/$animal.gif";
    notifyListeners();
  }

  startDown(){
    url = "assets/animation/down/$animal.gif";
    notifyListeners();
  }

}