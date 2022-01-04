import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';

import 'components/list_of_musics.dart';
import 'components/main_card.dart';

class SoundsScreen extends StatefulWidget {
  const SoundsScreen({Key? key}) : super(key: key);

  @override
  _SoundsScreenState createState() => _SoundsScreenState();
}

class _SoundsScreenState extends State<SoundsScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MainCardWidget.mainCardWidget(context),
            ListOfMusics.listOfMusic,
          ],
        ),
      ),
    );
  }
}
