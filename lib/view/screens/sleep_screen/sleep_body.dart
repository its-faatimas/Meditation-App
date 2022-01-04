import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';
import 'package:meditation_app/view/widgets/my_app_bar.dart';

import 'components/sleep_data.dart';

class SleepBody extends StatelessWidget {
  const SleepBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: MyAppBar(
        title: "i",
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              SleepData.title,
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: getProportionScreenHeight(203.0),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: SleepData.colors.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      right: getProportionScreenWidth(
                        20.0,
                      ),
                    ),
                    width: getProportionScreenWidth(100.0),
                    decoration: BoxDecoration(
                      color: SleepData.colors[index],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          SleepData.icons[index],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0,bottom: 8),
                          child: Text(
                            SleepData.times[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        Text(
                          SleepData.states[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Text(
              SleepData.title2,
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.asset(
              SleepData.chart,
              scale: 0.1,
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
