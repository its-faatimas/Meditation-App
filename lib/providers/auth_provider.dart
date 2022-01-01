import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier{
  bool isLogin = true;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void onPageChanged() {
    isLogin = !isLogin;
    notifyListeners();
  }
}