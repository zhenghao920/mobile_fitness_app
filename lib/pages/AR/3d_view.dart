import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class ModelView extends StatefulWidget {
  const ModelView({Key? key}) : super(key: key);

  @override
  _ModelViewState createState() => _ModelViewState();
}

class _ModelViewState extends State<ModelView> {
  late Object model;

  @override
  void initState() {
    model = Object(fileName: "assets/bike/Stationary Bike.obj");
    model.rotation.setValues(0, 45, 0);
    model.updateTransform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gym equipment'),
        ),
        body: Center(child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(model);
            scene.camera.zoom = 5;
          },
        ))

        // ModelViewer(
        //   backgroundColor: Colors.teal[50],
        //   //src: 'assets/ar/scene.gltf',
        //   src: "https://raw.githubusercontent.com/zhenghao920/3dmodel_test/main/scene.gltf",
        //   alt: "Workout 3D Model",
        //   autoPlay: true,
        //   autoRotate: true,
        //   cameraControls: true,
        // ),
        );
  }
}
