import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class MeditationProvider with ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController categoryController = TextEditingController();

  void sendData() async {
    await Dio().post('ipAdress' + "/meditation", data: {
      "name": nameController.text,
      "image": imageController.text,
      "category": categoryController.text,
    });
  }
  void clear(){
    nameController.clear();
    imageController.clear();
    categoryController.clear();
  }


}
