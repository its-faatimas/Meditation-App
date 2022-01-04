import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';

import 'components/tools_data.dart';

class ToolsBody extends StatelessWidget {
  const ToolsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ToolsData.title,
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 153,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 20.0,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: ToolsData.colors[index],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            20.0,
                          ),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            ToolsData.backImages[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                          getProportionScreenHeight(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              ToolsData.icons[index],
                            ),
                            SizedBox(
                              height: getProportionScreenHeight(8),
                            ),
                            Text(
                              ToolsData.titles[index],
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
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
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
