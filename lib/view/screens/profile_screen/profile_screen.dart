import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';
import 'package:meditation_app/provider/profile_provider.dart';
import 'package:meditation_app/view/screens/profile_screen/components/profile_data.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: getProportionScreenHeight(10.0),
          ),
          Container(
            height: getProportionScreenHeight(150),
            width: getProportionScreenWidth(150),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ProfileData.profileImage),
              ),
              shape: BoxShape.circle,
            ),
          ),
          Column(
            children: const [
              Text(
                "Afreen Khan",
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              Text(
                "Lucknow, India",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromRGBO(255, 255, 255, 0.5)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  context.read<ProfileProvider>().makeTrue();
                },
                child: Column(
                  children: [
                    Text(
                      "Stats",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: context.watch<ProfileProvider>().isTrue
                            ? const Color.fromRGBO(149, 203, 207, 1)
                            : const Color.fromRGBO(58, 80, 81, 1),
                      ),
                    ),
                    SizedBox(
                      height: getProportionScreenHeight(10),
                    ),
                    Container(
                      color: context.watch<ProfileProvider>().isTrue
                          ? const Color.fromRGBO(149, 203, 207, 1)
                          : const Color.fromRGBO(58, 80, 81, 1),
                      width: getProportionScreenWidth(375 / 2),
                      height: getProportionScreenHeight(3),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<ProfileProvider>().makeFalse();
                },
                child: Column(
                  children: [
                    Text(
                      "Achievements",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: context.watch<ProfileProvider>().isTrue
                            ? const Color.fromRGBO(58, 80, 81, 1)
                            : const Color.fromRGBO(149, 203, 207, 1),
                      ),
                    ),
                    SizedBox(
                      height: getProportionScreenHeight(10),
                    ),
                    Container(
                      color: context.watch<ProfileProvider>().isTrue
                          ? const Color.fromRGBO(58, 80, 81, 1)
                          : const Color.fromRGBO(149, 203, 207, 1),
                      width: getProportionScreenWidth(375 / 2),
                      height: getProportionScreenHeight(3),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Image.asset(ProfileData.statusBar),
        ],
      ),
    );
  }
}
