import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';
import 'package:meditation_app/provider/profile_provider.dart';
import 'package:meditation_app/provider/sounds_provider.dart';
import 'package:provider/src/provider.dart';

class MainCardWidget {
  static Widget mainCardWidget(BuildContext context) {
    return Container(
      height: getProportionScreenHeight(200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: AssetImage(
            context.watch<SoundsProvider>().backgroundImage,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.watch<SoundsProvider>().title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: getProportionScreenHeight(5.0),
                  ),
                  Text(
                    context.watch<SoundsProvider>().body,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: getProportionScreenHeight(15.0),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: Size(
                        getProportionScreenWidth(138),
                        getProportionScreenHeight(39),
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10.0,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      context.read<ProfileProvider>().changePage();
                    },
                    child: const Text(
                      "watch now ⏯",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
