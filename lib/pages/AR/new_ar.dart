import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class NewARTest extends StatefulWidget {
  const NewARTest({Key? key}) : super(key: key);

  @override
  _NewARTestState createState() => _NewARTestState();
}

class _NewARTestState extends State<NewARTest> {
  ArCoreController? arCoreController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AR Rendering'),
          backgroundColor: bar,
        ),
        body:ArCoreView(
          onArCoreViewCreated: _onArCoreViewCreated,
          enableTapRecognizer: true,
        ));
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;
    _addSphere(arCoreController!);
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

}
