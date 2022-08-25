import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class Bike extends StatefulWidget {
  const Bike({ Key? key }) : super(key: key);

  @override
  _BikeState createState() => _BikeState();
}

class _BikeState extends State<Bike> {
  late Object model;

  @override
  void initState() {
    model = Object(fileName: "assets/bike/scene.obj");
    model.rotation.setValues(270, 90, 0);
    model.updateTransform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gym,
        appBar: AppBar(
          backgroundColor: bar,
          title: Text('Stationary Bike'),
        ),
        body: Center(child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(model);
            scene.camera.zoom = 5;
          },
        )));
  }
}