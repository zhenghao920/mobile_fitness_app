import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class Barbell extends StatefulWidget {
  const Barbell({ Key? key }) : super(key: key);

  @override
  _BarbellState createState() => _BarbellState();
}

class _BarbellState extends State<Barbell> {
  late Object model;

  @override
  void initState() {
    model = Object(fileName: "assets/barbell/scene.obj");
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
          title: Text('Barbell'),
        ),
        body: Center(child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(model);
            scene.camera.zoom = 10;
          },
        )));
  }
}