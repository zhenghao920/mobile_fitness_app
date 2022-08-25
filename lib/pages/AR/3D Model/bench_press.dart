import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class BenchPress extends StatefulWidget {
  const BenchPress({Key? key}) : super(key: key);

  @override
  _BenchPressState createState() => _BenchPressState();
}

class _BenchPressState extends State<BenchPress> {
  late Object model;

  @override
  void initState() {
    model = Object(fileName: "assets/benchpress1/scene.obj");
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
          title: Text('Bench Press'),
        ),
        body: Center(child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(model);
            scene.camera.zoom = 5;
          },
        )));
  }
}
