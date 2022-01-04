import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';
import 'package:meditation_app/provider/sounds_provider.dart';
import 'package:provider/src/provider.dart';
import 'Sounds_data.dart';

class ListOfMusics{
  static Widget listOfMusic = Expanded(
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: InkWell(
            onTap: (){
              context.read<SoundsProvider>().changeMusic(index);
            },
            child: Row(
              children: [
                Image.asset(
                  SoundsData.backImageList[index],
                ),
                SizedBox(
                  width: getProportionScreenWidth(20.0),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      SoundsData.titles[index],
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      SoundsData.subtitles[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
                const Spacer(),
                Text(
                  SoundsData.trailings[index],
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,
                    color: Colors.white.withOpacity(
                      0.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}
