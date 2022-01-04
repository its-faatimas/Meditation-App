import 'package:flutter/cupertino.dart';
import 'package:meditation_app/view/screens/sounds_screen/components/Sounds_data.dart';

class SoundsProvider with ChangeNotifier {
  String backgroundImage = SoundsData.mainbackImage;
  String title = SoundsData.header[0];
  String body = SoundsData.body[0];
  String musicUrl = SoundsData.musicUrl[0];

  changeMusic(index){
    backgroundImage = SoundsData.backImageList[index];
    title = SoundsData.titles[index];
    musicUrl = SoundsData.musicUrl[index];
    notifyListeners();

  }
  notify(){
    notifyListeners();
  }


}
