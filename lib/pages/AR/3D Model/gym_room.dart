import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class GymRoom extends StatefulWidget {
  const GymRoom({ Key? key }) : super(key: key);

  @override
  _GymRoomState createState() => _GymRoomState();
}

class _GymRoomState extends State<GymRoom> {
  late Object model;

  @override
  void initState() {
    model = Object(fileName: "assets/gym1/scene.obj");
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
          title: Text('Small Gym Room'),
        ),
        body: Center(child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(model);
            scene.camera.zoom = 5;
          },
        ))
        );
  }
}