import 'dart:typed_data';

import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
//import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class ArFeaturePage extends StatefulWidget {
  const ArFeaturePage({Key? key}) : super(key: key);

  @override
  _ArFeaturePageState createState() => _ArFeaturePageState();
}

class _ArFeaturePageState extends State<ArFeaturePage> {
/*
  late Uint8List imageData;
  @override
  void initState() {
    super.initState();
    loadAsset();
  }

  void loadAsset() async {
    Uint8List data =
        (await rootBundle.load('assets/images/gif1.gif')).buffer.asUint8List();
    setState(() => this.imageData = data);
  }

  late ArCoreController arCoreController;
  _onArCoreViewCreated(ArCoreController _arcoreController) {
    arCoreController = _arcoreController;
    _addSphere(arCoreController);
    _addObject(_arcoreController);
  }

  _addSphere(ArCoreController _arcoreController) {
    final material = ArCoreMaterial(color: Colors.deepPurple);
    final sphere = ArCoreSphere(materials: [material], radius: 0.2);
    final node = ArCoreNode(
      shape: sphere,
      position: vector.Vector3(
        0,
        0,
        -1,
      ),
    );

    _arcoreController.addArCoreNode(node);
  }

  _added(ArCoreController _arcoreController) {
    ArCorePlane arCorePlane = ArCorePlane()
    final object = ArCorePlane
  }

  _addObject(ArCoreController _arcoreController) {
    final object = ArCoreImage(bytes: imageData, width: 300, height: 300);
    final node = ArCoreNode(
        image: object,
        position: vector.Vector3(
          0,
          0,
          -1,
        ),
        rotation: vector.Vector4(1, 1, 1, 1));

    _arcoreController.addArCoreNode(node);
  }

  @override
  void dispose() {
    
    arCoreController.dispose();
    super.dispose();
  }
*/

  late ArCoreController arCoreController;
  late Uint8List imageData;
  @override
  void initState() {
    super.initState();
    loadAsset();
  }

  void loadAsset() async {
    Uint8List data =
        (await rootBundle.load('assets/images/gif1.gif')).buffer.asUint8List();
    setState(() => this.imageData = data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            //ARKitSceneView(onARKitViewCreated: (controller) => arView(controller),),
            ArCoreView(
      onArCoreViewCreated: _onArCoreViewCreated,
      enableTapRecognizer: true,
    ));
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;
    _addSphere1(arCoreController);
    //arCoreController.onNodeTap = (name) => onTapHandler(name);
    //arCoreController.onPlaneTap = controlOnPlaneTap;
  }

   _addSphere(ArCoreController _arcoreController) {
    final material = ArCoreMaterial(color: Colors.deepPurple);
    final sphere = ArCoreSphere(materials: [material], radius: 0.2);
    final node = ArCoreNode(
      shape: sphere,
      position: vector.Vector3(
        0,
        0,
        -1,
      ),
    );

    _arcoreController.addArCoreNode(node);
  }

  _addSphere1(ArCoreController _arcoreController) {
    final test = ArCoreReferenceNode(
      scale: vector.Vector3(0.5, 0.5, 0.5),
      objectUrl: "https://raw.githubusercontent.com/zhenghao920/3dmodel_test/main/scene.gltf",
      //objectUrl: "https://firebasestorage.googleapis.com/v0/b/fitness-fyp-flutter.appspot.com/o/scene.gltf?alt=media&token=72a0f5cc-8b7a-4208-9a89-5bad4d1b1afe",
      position: vector.Vector3(0.2, 0, 0),
      //rotation: vector.Vector4(0, 0, 0, 0),
    );

    _arcoreController.addArCoreNodeWithAnchor(test);
  }

  void onTapHandler(String name) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) =>
          AlertDialog(content: Text('onNodeTap on $name')),
    );
  }

  void controlOnPlaneTap(List<ArCoreHitTestResult> results) {
    final hit = results.first;
    addItemImagetoScene(hit);
  }

  Future addItemImagetoScene(ArCoreHitTestResult hitTestResult) async {
    final bytes = (await rootBundle.load('assets/workout/core01.gif'))
        .buffer
        .asUint8List();

    final test = ArCoreReferenceNode(
      objectUrl: "https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/Duck/glTF/Duck.gltf",
      position: vector.Vector3(0.2, 0, 0),
      //rotation: vector.Vector4(0, 0, 0, 0),
    );

    final imageItem = ArCoreNode(
      image: ArCoreImage(bytes: bytes, width: 60, height: 60),
      position: hitTestResult.pose.translation + vector.Vector3(0.0, 0.0, 0.0),
      rotation:
          hitTestResult.pose.rotation + vector.Vector4(0.0, 0.0, 0.0, 0.0),
    );
    arCoreController.addArCoreNodeWithAnchor(test);
  }

  void _handleOnPlaneTap(List<ArCoreHitTestResult> hits) {
    final hit = hits.first;

    final moonMaterial = ArCoreMaterial(color: Colors.grey);

    final moonShape = ArCoreSphere(
      materials: [moonMaterial],
      radius: 0.03,
    );

    final moon = ArCoreNode(
      shape: moonShape,
      position: vector.Vector3(0.2, 0, 0),
      rotation: vector.Vector4(0, 0, 0, 0),
    );

    final earthMaterial = ArCoreMaterial(
        color: Color.fromARGB(120, 66, 134, 244), textureBytes: imageData);

    final earthShape = ArCoreSphere(
      materials: [earthMaterial],
      radius: 0.1,
    );

    final earth = ArCoreNode(
      shape: earthShape,
      children: [moon],
      position: vector.Vector3(0.0, 1.0, 0.0),
      //rotation: plane.pose.rotation
    );

    arCoreController.addArCoreNodeWithAnchor(earth);
  }
}

// void arView(ARKitController controller) {
//   final nodeAr = ARKitNode(
//     geometry: ARKitSphere(materials: [
//       ARKitMaterial(
//         diffuse: ARKitMaterialProperty(image: "assets/images/back.png"),
//         doubleSided: true,
//       )
//     ], radius: 1),
//     //position: Vector3(0, 0, 0),
//   );
//   controller.add(nodeAr);
// }
