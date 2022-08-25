import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class Dumbbell extends StatefulWidget {
  const Dumbbell({ Key? key }) : super(key: key);

  @override
  _DumbbellState createState() => _DumbbellState();
}

class _DumbbellState extends State<Dumbbell> {
  late Object model;

  @override
  void initState() {
    model = Object(fileName: "assets/dumbbell/scene.obj");
    model.rotation.setValues(0, 45, 0);
    model.updateTransform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gym,
        appBar: AppBar(
          backgroundColor: bar,
          title: Text('Gym equipment'),
        ),
        body: Center(child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(model);
            scene.camera.zoom = 5;
          },
        )));
  }
}