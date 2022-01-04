import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/models/meditation_model.dart';

class MeditationService{
  Future<List<MeditationModel>> getData() async {
    Response res = await Dio().get('ipAdress' + "/meditation");
    print(res.data.toString());
    return (res.data as List).map((e) => MeditationModel.fromJson(e)).toList();
  }



}