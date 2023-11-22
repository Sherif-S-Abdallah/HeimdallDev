import 'package:flutter/material.dart';
import 'package:heimdall/Core/Theme/MyTheme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {

  // define the theme data to read from
  ThemeData _theme = MyTheme.darkBlueTheme;

  // function to change the theme
  Future<void> changeTheme (ThemeData themeData) async {
    // if the theme is the same theme them it will terminate the process
    if (themeData == _theme) {return;}

    // reed the shared preferences to read the old value of the theme
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _theme = themeData;

    // update the value of key "theme" to the current theme value
    if(_theme == MyTheme.blackAndWhiteTheme){
      prefs.setString("theme", "BlackAndWhite");
    }else if(_theme == MyTheme.purpleAndWhiteTheme){
      prefs.setString("theme", "PurpleAndWhite");
    }else if(_theme == MyTheme.darkPurpleTheme){
      prefs.setString("theme", "DarkPurpleTheme");
    }else {
      prefs.setString("theme", "DarkBlueTheme");
    }

    // notify all listeners on the theme values
    notifyListeners();
  }

  // function to reed theme
  ThemeData getTheme(){
    return _theme;
  }

}