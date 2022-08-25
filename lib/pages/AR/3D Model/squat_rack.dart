import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class SquatRack extends StatefulWidget {
  const SquatRack({ Key? key }) : super(key: key);

  @override
  _SquatRackState createState() => _SquatRackState();
}

class _SquatRackState extends State<SquatRack> {
  late Object model;

  @override
  void initState() {
    model = Object(fileName: "assets/squatrack/scene.obj");
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
          title: Text('Squat Rack'),
        ),
        body: Center(child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(model);
            scene.camera.zoom = 5;
          },
        )));
  }
}