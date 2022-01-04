import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/models/meditation_model.dart';
import 'package:meditation_app/provider/meditation_provider.dart';
import 'package:meditation_app/services/meditation_service.dart';
import 'package:meditation_app/view/widgets/my_app_bar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Home Page",
        color: Colors.transparent,
      ),
      body: FutureBuilder(
        future: MeditationService().getData(),
        builder: (context, AsyncSnapshot<List<MeditationModel>> snap) {
          if (!snap.hasData) {
            return CircularProgressIndicator();
          } else if (snap.hasError) {
            return Text(snap.hasError.toString());
          } else {
            return ListView.builder(
                itemCount: snap.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snap.data![index].name.toString()),
                    trailing: IconButton(
                      onPressed: () async{
                        await Dio().delete(
                          'ipAdress' + '/meditation',
                          data: {
                             "name": snap.data![index].name.toString(),
                          },
                        );
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  );
                });
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  actions: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      onPressed: () {
                        context.read<MeditationProvider>().clear();
                        Navigator.of(context).pop();
                      },
                      child: Text("Cancel Data"),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        context.read<MeditationProvider>().sendData();
                        context.read<MeditationProvider>().clear();
                        Navigator.of(context).pop();
                      },
                      child: Text("Send Data"),
                    ),
                  ],
                  content: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            controller: context
                                .watch<MeditationProvider>()
                                .nameController,
                          ),
                          TextFormField(
                            controller: context
                                .watch<MeditationProvider>()
                                .imageController,
                          ),
                          TextFormField(
                            controller: context
                                .watch<MeditationProvider>()
                                .categoryController,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
