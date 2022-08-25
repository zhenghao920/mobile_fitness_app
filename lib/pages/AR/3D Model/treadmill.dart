import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class TreadMill extends StatefulWidget {
  const TreadMill({ Key? key }) : super(key: key);

  @override
  _TreadMillState createState() => _TreadMillState();
}

class _TreadMillState extends State<TreadMill> {
  late Object model;

  @override
  void initState() {
    model = Object(fileName: "assets/treadmill/scene.obj");
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
          title: Text('Treadmill'),
        ),
        body: Center(child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(model);
            scene.camera.zoom = 5;
          },
        )));
  }
}