import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class LatPulldown extends StatefulWidget {
  const LatPulldown({Key? key}) : super(key: key);

  @override
  _LatPulldownState createState() => _LatPulldownState();
}

class _LatPulldownState extends State<LatPulldown> {
  late Object model;

  @override
  void initState() {
    model = Object(fileName: "assets/multi/scene.obj");
    model.rotation.setValues(270, 45, 0);
    model.updateTransform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: gym,
        appBar: AppBar(
          backgroundColor: bar,
          title: Text('Lat Pull Down'),
        ),
        body: Center(child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(model);
            scene.camera.zoom = 5;
          },
        )));
  }
}
