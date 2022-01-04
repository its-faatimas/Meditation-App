import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';
import 'components/meditation_data.dart';

class MeditationBody extends StatelessWidget {
  const MeditationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text(
              MeditationData.title,
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              MeditationData.description,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                  color: Colors.white.withOpacity(0.5)),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Image.asset(MeditationData.image),
            ),
            Text(
              MeditationData.time,
              style: TextStyle(
                fontSize: 38.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    getProportionScreenWidth(186),
                    getProportionScreenHeight(61),
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  primary: const Color.fromRGBO(124, 154, 146, 1),
                ),
                onPressed: () {},
                child: const Text(
                  "Start Now",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
