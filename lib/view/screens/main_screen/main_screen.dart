import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';
import 'package:meditation_app/provider/profile_provider.dart';
import 'package:meditation_app/view/screens/sound_screen/sound_screen.dart';
import 'package:meditation_app/view/widgets/my_app_bar.dart';
import 'package:provider/provider.dart';
import 'package:meditation_app/core/components/size_config.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: (context.watch<ProfileProvider>().selectedIndex == 2)
          ? MyAppBar(title: "edit")
          : MyAppBar(title: "nothitng"),
      body: (context.watch<ProfileProvider>().selectedIndex == 1 &&
              context.watch<ProfileProvider>().page == 2)
          ? SoundScreen()
          : context.read<ProfileProvider>().bodies(),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
