import 'package:flutter/material.dart';
import 'package:meditation_app/provider/profile_provider.dart';
import 'package:meditation_app/view/screens/meditation_screen/meditation_body.dart';
import 'package:meditation_app/view/screens/profile_screen/components/profile_data.dart';
import 'package:meditation_app/view/screens/sleep_screen/sleep_body.dart';
import 'package:meditation_app/view/screens/tools_screen/tools_body.dart';
import 'package:provider/src/provider.dart';

class ProfileEditScreen extends StatelessWidget {
  ProfileEditScreen({Key? key}) : super(key: key);

  List pages = [
    const MeditationBody(),
    const ToolsBody(),
    const SleepBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(
                  ProfileData.titles[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    // context.read<ProfileProvider>().changeProfilePages(index);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => pages[index],
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                ),
              ),
            );
          }),
    );
  }
}
