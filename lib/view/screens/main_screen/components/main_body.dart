import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';

import 'main_screen_data.dart';

class MainBody extends StatefulWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.all(
        getProportionScreenHeight(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome back, Afreen!",
            style: TextStyle(
              fontSize: getProportionScreenHeight(30),
            ),
          ),
          SizedBox(
            height: getProportionScreenHeight(6),
          ),
          Text(
            "How are you feeling today?",
            style: TextStyle(
              fontSize: getProportionScreenHeight(22),
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: getProportionScreenHeight(20.0),
            ),
            height: getProportionScreenHeight(94),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(0),
              scrollDirection: Axis.horizontal,
              itemCount: MainScreenData().feelingsImagelist.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    right: getProportionScreenHeight(26),
                  ),
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(247, 243, 240, 1),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(
                                MainScreenData().feelingsImagelist[index],
                              ),
                            ),
                          ),
                          height: getProportionScreenHeight(70),
                          width: getProportionScreenWidth(65),
                        ),
                        SizedBox(
                          height: getProportionScreenHeight(5),
                        ),
                        Text(
                          MainScreenData().feelingsNameList[index],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: getProportionScreenHeight(5),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: MainScreenData().headerList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    height: getProportionScreenHeight(200),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(247, 243, 240, 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: getProportionScreenHeight(5.0),
                                    ),
                                    Text(
                                      MainScreenData().bodyList[index],
                                      style: TextStyle(
                                        color: Color.fromRGBO(37, 51, 52, 1),
                                        fontSize: getProportionScreenHeight(15),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: getProportionScreenHeight(15.0),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary:
                                            const Color.fromRGBO(37, 51, 52, 1),
                                        minimumSize: Size(
                                            getProportionScreenWidth(138),
                                            getProportionScreenHeight(39)),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              10.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        "watch now ⏯",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 7,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      MainScreenData().images[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            child: Text(
                              MainScreenData().headerList[index],
                              style: const TextStyle(
                                color: Color.fromRGBO(37, 51, 52, 1),
                                fontSize: 25.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
