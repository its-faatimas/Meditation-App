import 'dart:ui';

class SleepData{
  static String title = "Sleep Session";
  static String title2 = "Bedtime";

  static List<Color> colors = [
   const Color.fromRGBO(105, 176, 156, 1),
   const Color.fromRGBO(73, 138, 120, 1),
   const Color.fromRGBO(105, 176, 156, 1),
  ];

  static String chart = "assets/sleep/Chart.png";

  static List<String> icons = [
    "assets/sleep/Group.png",
    "assets/sleep/Group2.png",
    "assets/sleep/Group3.png",
  ];

  static List<String> times = [
    "5h 30m",
    "1h 10m",
    "3h 30m",
  ];

  static List<String> states = [
    "sleep",
    "deep",
    "Quality",
  ];
}