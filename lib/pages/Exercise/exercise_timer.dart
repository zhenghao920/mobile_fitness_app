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
    // return Scaffold(
    //   body: SingleChildScrollView(
    //     child: OrientationBuilder(builder: (context, orientation) {
    //       return (MediaQuery.of(context).orientation ==
    //               prefix0.Orientation.portrait)
    //           ? Portrait(image: this.image, tag: this.tag)
    //           : Landscape(image: this.image, tag: this.tag);
    //     }),
    //   ),
    // );

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
                              // decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //   image:
                              //       Image.asset(widget.exercise[imgcount].image),
                              //   //AssetImage(workout[imgcount]['img'])
                              // )),
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
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //   children: [
                            //     Column(
                            //       children: [
                            //         Text('Work:'),
                            //         SizedBox(
                            //             width: 35,
                            //             child: insertNumber(isTimer: true)),
                            //       ],
                            //     ),
                            //     Column(
                            //       children: [
                            //         Text('Rest:'),
                            //         SizedBox(
                            //             width: 35,
                            //             child: insertNumber(isRestTime: true)),
                            //       ],
                            //     ),
                            //     Column(
                            //       children: [
                            //         Text('Sets:'),
                            //         SizedBox(
                            //             width: 35,
                            //             child: insertNumber(isSets: true)),
                            //       ],
                            //     ),
                            //   ],
                            // ),
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
    //At the next line, DO NOT pass the entire reference such as assets/yes.mp3. This will not work.
    //Just pass the file name only.
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

/*
class Portrait extends StatefulWidget {
  final String image, tag;

  Portrait({required this.image, required this.tag});

  @override
  _PortraitState createState() => _PortraitState();
}

class _PortraitState extends State<Portrait> {
  static const maxSec = 5;
  int sec = maxSec;
  Timer? timer;

  void resetTimer() => setState(() => sec == maxSec);

  void startTimer({bool reset = true}) {
    if (reset) {
      resetTimer();
    }

    timer = Timer.periodic(
      Duration(seconds: 1),
      (_) {
        if (sec > 0) {
          setState(() => sec--);
        } else {
          stopTimer(reset: false);
        }
      },
    );
  }

  void stopTimer({bool reset = true}) {
    if (reset) {
      resetTimer();
    }

    setState(() => timer?.cancel());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Hero(
              tag: this.widget.tag,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 270,
                child: Image.network(
                  this.widget.image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Positioned(
              top: 40,
              right: 20,
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                  ),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
          height: size.height - 270.0,
          width: size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Text(
                      'Plank',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Next: Push-ups',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  decoTimer(),
                  SizedBox(
                    height: 25,
                  ),
                  buildButton(),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 80.0,
                    height: 55.0,
                    margin: EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(232, 242, 248, 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Icon(
                      Icons.pause,
                      color: Color.fromRGBO(82, 126, 255, 1.0),
                      size: 35.0,
                    ),
                  ),
                  Container(
                    width: size.width - 130.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(232, 242, 248, 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Color.fromRGBO(82, 126, 255, 1.0),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildButton() {
    final isRunning = timer == null ? false : timer!.isActive;
    final isComplete = sec == maxSec || sec == 0;

    if (isRunning || isComplete) {
      String text2;
      if (isRunning) {
        text2 = 'Pause';
      } else {
        text2 = 'Resume';
      }
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Button(
              text: text2,
              onClicked: () {
                if (isRunning) {
                  stopTimer(reset: false);
                } else {
                  startTimer(reset: false);
                }
              }),
          SizedBox(
            width: 20,
          ),
          Button(text: 'Cancel', onClicked: stopTimer),
        ],
      );
    } else {
      return Button(
        text: 'Start!',
        onClicked: () {
          startTimer();
        },
      );
    }
  }

  Widget buildTimer() {
    if (sec == 0) {
      return Text('Done',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 60, color: Colors.black));
    } else {
      return Text('$sec',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 80, color: Colors.black));
    }
  }

  Widget decoTimer() {
    return SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: sec / maxSec,
            strokeWidth: 15,
            valueColor: AlwaysStoppedAnimation(Colors.black),
            backgroundColor: Colors.blueAccent,
          ),
          Center(
            child: buildTimer(),
          )
        ],
      ),
    );
  }
}

class Landscape extends StatelessWidget {
  final String image, tag;

  Landscape({required this.image, required this.tag});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          child: Image.network(
            this.image,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 40.0,
          left: 40.0,
          child: Text(
            'Plank',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w900,
              color: Colors.grey[500],
            ),
          ),
        ),
        Positioned(
          top: 80.0,
          left: 40.0,
          child: Text(
            'Next: Push-ups',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
              color: Colors.grey[800],
            ),
          ),
        ),
        Positioned(
            top: 30.0,
            left: size.width - 60.0,
            child: GestureDetector(
                child: Container(
                    width: 45.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.close,
                      size: 29.0,
                      color: Colors.grey[600],
                    )),
                onTap: () {
                  Navigator.pop(context);
                })),
        Positioned(
            left: 40.0,
            top: size.height - 60.0,
            child: Text(
              '43',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w900,
                color: Colors.grey[500],
              ),
            )),
        Positioned(
            top: size.height - 80.0,
            left: size.width / 2 - 30.0,
            child: Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.pause,
                  size: 38.0,
                ))),
        Positioned(
          top: size.height - 80.0,
          left: size.width - 170.0,
          child: Container(
            height: 60.0,
            width: 145.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(360.0),
            ),
            child: Center(
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
*/