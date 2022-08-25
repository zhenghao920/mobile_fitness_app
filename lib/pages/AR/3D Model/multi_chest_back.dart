import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class MultiChestBack extends StatefulWidget {
  const MultiChestBack({Key? key}) : super(key: key);

  @override
  _MultiChestBackState createState() => _MultiChestBackState();
}

class _MultiChestBackState extends State<MultiChestBack> {
  late Object model;

  @override
  void initState() {
    model = Object(fileName: "assets/lat/scene.obj");
    model.rotation.setValues(270, 45, 0);
    model.updateTransform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gym,
      appBar: AppBar(title: Text('Multi Function Cable'),backgroundColor: bar,),
      body: Center(child: Cube(
      onSceneCreated: (Scene scene) {
        scene.world.add(model);
        scene.camera.zoom = 20;
      },
    )));
  }
}
