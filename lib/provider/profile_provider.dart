import 'package:flutter/cupertino.dart';
import 'package:meditation_app/view/screens/main_screen/components/main_body.dart';
import 'package:meditation_app/view/screens/profile_screen/profile_screen.dart';
import 'package:meditation_app/view/screens/sounds_screen/sounds_screen.dart';

class ProfileProvider with ChangeNotifier {
  bool isTrue = true;

  void makeTrue() {
    isTrue = true;
    notifyListeners();
  }

  void makeFalse() {
    isTrue = false;
    notifyListeners();
  }

  int selectedIndex = 0;
  int selectedIndex2 = 0;
  int page = 0;
  int profilePages = 0;

  void changePage(){
    if(selectedIndex == 1){
      page = 2;
      notifyListeners();
    }else{
      page = 0;
      notifyListeners();
    }
  }
  // void changeProfilePages(index){
  //   if(selectedIndex == 2 && index == 0){
  //     profilePages = 1;
  //     notifyListeners();
  //   }else if(selectedIndex == 2 && index == 1){
  //     profilePages = 2;
  //     notifyListeners();
  //   }else if(selectedIndex == 2 && index == 2){
  //     profilePages = 3;
  //     notifyListeners();
  //   }else{
  //     profilePages = 0;
  //     notifyListeners();
  //   }
  // }


  void notify() {
    notifyListeners();
  }

  bodies() {
    if (selectedIndex == 0) {
      page = 0;
      return const MainBody();
    } else if (selectedIndex == 1) {
        return const SoundsScreen();
    } else if (selectedIndex == 2) {
      page = 0;
      return const ProfileScreen();
    }
  }
}
