import 'package:flutter/material.dart';
import 'package:todo_week1/themes/theme.dart';

class ThemeProvider with ChangeNotifier{

   //Set lightmode value as default
   ThemeData _themeData = lightMode;

   //Get theme value
   ThemeData get themeData => _themeData;

   //Get bool value for radio input
   bool get isDarkMode => _themeData == darkMode;

   //Set method for new theme
   set themeData(ThemeData themeData){
      _themeData = themeData;
      notifyListeners();
   }




}
