import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AuthProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
          primarySwatch: Colors.blue, canvasColor: ConstColors.textMeditation),
      home: AuthPage(),
    );
  }
}
