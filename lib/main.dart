import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';
import 'package:meditation_app/provider/meditation_provider.dart';
import 'package:meditation_app/provider/profile_provider.dart';
import 'package:meditation_app/provider/sounds_provider.dart';
import 'package:meditation_app/view/screens/onboard/splash_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AuthProvider()),
      ChangeNotifierProvider(create: (_)=> ProfileProvider()),
      ChangeNotifierProvider(create: (_) => MeditationProvider()),
      ChangeNotifierProvider(create: (_)=> SoundsProvider())

    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        fontFamily: "Alegreya",
          primarySwatch: Colors.blue, canvasColor: ConstColors.textMeditation),
      home: SplashScreen(),
    );
  }
}
