import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class Trainner extends StatefulWidget {
  const Trainner({ Key? key }) : super(key: key);

  @override
  _TrainnerState createState() => _TrainnerState();
}

class _TrainnerState extends State<Trainner> {
  late Object model;

  @override
  void initState() {
    model = Object(fileName: "assets/trainner/scene.obj");
    model.rotation.setValues(270, 90, 180);
    model.updateTransform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gym,
        appBar: AppBar(
          backgroundColor: bar,
          title: Text('Trainer'),
        ),
        body: Center(child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(model);
            scene.camera.zoom = 10;
          },
        )));
  }
}