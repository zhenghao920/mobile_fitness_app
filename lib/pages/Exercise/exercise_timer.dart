import 'dart:async';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:fitness_ui_kit/pages/Exercise/exercise_data.dart';
import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wakelock/wakelock.dart';

class ExerciseTimer extends StatefulWidget {
  final List<ExerciseData> exercise;

  const ExerciseTimer({Key? key, required this.exercise}) : super(key: key);
  @override
  _ExerciseTimerState createState() => _ExerciseTimerState();
}

class _ExerciseTimerState extends State<ExerciseTimer> {
  final String image =
      'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hdm119918mh15842-1545237096.png';

  final String tag = 'imageHeader';

  static var maxSeconds = 60;
  static var maxRestSeconds = 30;
  static var sets = 16;
  static var counter = 0;

  bool screenLock = false;
  int seconds = maxSeconds;
  int restCount = sets;
  int imgcount = counter;
  Timer? timer;
  bool isRest = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.exercise[imgcount].name),
        backgroundColor: bar,
      ),
      backgroundColor: gym,
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                      flex: 6,
                      child: Column(
                        children: [
                          Hero(
                            tag: this.tag,
                            child: Container(
                              child:
                                  Image.asset(widget.exercise[imgcount].image),
                              width: MediaQuery.of(context).size.width,
                              height: 240,
                            ),
                          ),
                          buildTimer(),
                        ],
                      )),
                      SizedBox(height: 30,),
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.accessibility_new),
                            Text('${maxSeconds} secs'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.timelapse),
                            Text('${maxRestSeconds} secs'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.history),
                            Text('$restCount'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            toggleButton(),
                          ],
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget insertNumber({isSets = false, isTimer = false, isRestTime = false}) {
    return TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: TextStyle(fontSize: 30),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: const InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 0),
      ),
      onChanged: (text) {
        var num = int.parse(text);
        if (isSets) {
          setState(() {
            sets = num;
          });
        }
        if (isTimer) {
          if (num != 0)
            setState(() {
              maxSeconds = num;
              seconds = maxSeconds;
            });
        }
        if (isRestTime) {
          setState(() {
            maxRestSeconds = num;
          });
        }
      },
    );
  }

  void addTime(int value) {
    setState(() {
      maxSeconds = maxSeconds + value;
      seconds = maxSeconds;
    });
  }

  void timerReset() {
    setState(() {
      seconds = maxSeconds;
      restCount = 0;
      isRest = false;
      Wakelock.toggle(enable: screenLock);
    });
  }

  void startTimer() {
    screenLock = true;
    Wakelock.toggle(enable: screenLock);

    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (seconds > 0 && restCount > 0) {
        setState(() {
          seconds--;
        });
      } else if (seconds == 0 && isRest == false) {
        seconds = maxRestSeconds;
        isRest = true;
        restCount--;
        playLocalAsset();
      } else if (seconds == 0 && isRest == true) {
        playLocalAsset();
        seconds = maxSeconds;
        isRest = false;
        imgcount++;
      } else {
        setState(() {
          screenLock = false;
          timer?.cancel();
          timerReset();
        });
      }
    });
  }

  void stopTimer({bool reset = true}) {
    screenLock = false;
    Wakelock.toggle(enable: screenLock);
    if (reset) {
      timerReset();
    }

    setState(() => timer?.cancel());
  }

  Future<AudioPlayer> playLocalAsset() async {
    AudioCache cache = new AudioCache();
    return await cache.play("ringtones/rest_alarm.wav");
  }

  Widget toggleButton() {
    final isRunning = timer == null ? false : timer!.isActive;
    final isCompleted = seconds == 0 || seconds == maxSeconds;

    return isRunning || !isCompleted
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    if (isRunning) {
                      stopTimer(reset: false);
                    } else {
                      startTimer();
                    }
                  },
                  child: Text(isRunning ? 'Pause' : 'Resume')),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    stopTimer();
                  },
                  child: Text('Stop'))
            ],
          )
        : ElevatedButton(
            onPressed: () {
              setState(() => restCount = sets);
              startTimer();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text('Start Now!'),
            ));
  }

  Widget buildTimer() {
    return SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: isRest ? seconds / maxRestSeconds : seconds / maxSeconds,
            strokeWidth: 14,
            backgroundColor: Colors.white10,
          ),
          Center(
            child: buildTime(),
          )
        ],
      ),
    );
  }

  Widget buildTime() {
    //bool isDone = true;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(isRest ? 'Rest Time' : 'Work Time'),
        Text(
          '$seconds',
          style: TextStyle(fontSize: 80),
        ),
        Icon(isRest ? Icons.timelapse : Icons.accessibility_new),
      ],
    );
  }
}