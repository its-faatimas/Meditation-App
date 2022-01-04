import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';
import 'package:meditation_app/provider/sounds_provider.dart';
import 'package:provider/src/provider.dart';
import 'components/sound_data.dart';
import 'model/audio_asset_player.dart';

class SoundScreen extends StatefulWidget {
  const SoundScreen({Key? key}) : super(key: key);

  @override
  State<SoundScreen> createState() => _SoundScreenState();
}

class _SoundScreenState extends State<SoundScreen> {
  static const iconSize = 50.0;
  final player = AudioAssetPlayer("song.mp3");

  late final StreamSubscription progressSubscription;
  late final StreamSubscription stateSubscription;

  double progress = 0.0;
  PlayerState state = PlayerState.STOPPED;

  late final Future initFuture;

  @override
  void initState() {
    initFuture = player.init().then((value) {
      progressSubscription =
          player.progressStream.listen((p) => setState(() => progress = p));

      stateSubscription =
          player.stateStream.listen((s) => setState(() => state = s));
    });
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: getProportionScreenHeight(250),
            width: getProportionScreenWidth(250),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  context.watch<SoundsProvider>().backgroundImage,
                ),
                fit: BoxFit.cover,
              ),
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
          Column(
            children: [
              Text(
                context.watch<SoundsProvider>().title,
                style: const TextStyle(
                    fontSize: 35.0, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              const Text(
                "By: Painting with Passion",
                style: TextStyle(
                    fontSize: 25.0, color: Color.fromRGBO(255, 255, 255, 0.5)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Image.asset(
            SoundData.image2,
          ),
          // Image.asset(
          //   SoundData.image3,
          // ),
          FutureBuilder<void>(
            future: initFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const Text(
                  "Loading",
                  textAlign: TextAlign.center,
                );
              }
              return Card(
                color: Colors.transparent,
                elevation: 0.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildPlayButton(),
                        buildPauseButton(),
                        buildStopButton(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(
                        32.0,
                      ),
                      child: LinearProgressIndicator(
                        value: progress,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buildPlayButton() {
    if (state == PlayerState.PLAYING) {
      return const IconButton(
        onPressed: null,
        icon: Icon(
          Icons.play_arrow,
          color: Colors.grey,
          size: iconSize,
        ),
      );
    }
    return IconButton(
      onPressed: player.play,
      icon: const Icon(
        Icons.play_arrow,
        color: Colors.green,
        size: iconSize,
      ),
    );
  }

  Widget buildPauseButton() {
    if (state != PlayerState.PLAYING) {
      return const IconButton(
        onPressed: null,
        icon: Icon(
          Icons.pause,
          color: Colors.grey,
          size: iconSize,
        ),
      );
    }
    return IconButton(
      onPressed: player.pause,
      icon: const Icon(
        Icons.pause,
        color: Colors.orange,
        size: iconSize,
      ),
    );
  }

  Widget buildStopButton() {
    if (state == PlayerState.STOPPED) {
      return const IconButton(
        onPressed: null,
        icon: Icon(
          Icons.stop,
          color: Colors.grey,
          size: iconSize,
        ),
      );
    }
    return IconButton(
      onPressed: player.reset,
      icon: const Icon(
        Icons.stop,
        color: Colors.red,
        size: iconSize,
      ),
    );
  }
}
