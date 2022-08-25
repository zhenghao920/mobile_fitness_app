import 'package:fitness_ui_kit/pages/AR/3D%20Model/barbell.dart';
import 'package:fitness_ui_kit/pages/AR/3D%20Model/bench_press.dart';
import 'package:fitness_ui_kit/pages/AR/3D%20Model/gym_room.dart';
import 'package:fitness_ui_kit/pages/AR/3D%20Model/lat_pulldown.dart';
import 'package:fitness_ui_kit/pages/AR/3D%20Model/multi_chest_back.dart';
import 'package:fitness_ui_kit/pages/AR/3D%20Model/squat_rack.dart';
import 'package:fitness_ui_kit/pages/AR/3D%20Model/stationary_bike.dart';
import 'package:fitness_ui_kit/pages/AR/3D%20Model/trainner.dart';
import 'package:fitness_ui_kit/pages/AR/3D%20Model/treadmill.dart';
import 'package:fitness_ui_kit/pages/AR/3d_view.dart';
import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:fitness_ui_kit/widget/icon_card.dart';
import 'package:flutter/material.dart';

class ModelOptions extends StatelessWidget {
  const ModelOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bar,
        title: Text('3D Model'),
      ),
      backgroundColor: gym,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return BenchPress();
                    },
                  ),
                );
              },
              child: ListTile(
                  leading: IconCardWidget(icon: Icons.emoji_objects_outlined, color: Colors.black),
                  title: Text('Bench Press'),
                ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return MultiChestBack();
                    },
                  ),
                );
              },
              child: ListTile(
                  leading: IconCardWidget(icon: Icons.emoji_objects_outlined, color: Colors.black),
                  title: Text('Multi Function Cable'),
                ),
            ),
            SizedBox(height:10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return LatPulldown();
                    },
                  ),
                );
              },
              child: ListTile(
                  leading: IconCardWidget(icon: Icons.emoji_objects_outlined, color: Colors.black),
                  title: Text('Lat Pull Down'),
                ),
            ),
            SizedBox(height:10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return GymRoom();
                    },
                  ),
                );
              },
              child: ListTile(
                  leading: IconCardWidget(icon: Icons.emoji_objects_outlined, color: Colors.black),
                  title: Text('Small Gym Room'),
                ),
            ),
            SizedBox(height:10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return Bike();
                    },
                  ),
                );
              },
              child: ListTile(
                  leading: IconCardWidget(icon: Icons.emoji_objects_outlined, color: Colors.black),
                  title: Text('Stationary Bike'),
                ),
            ),
            SizedBox(height:10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return Trainner();
                    },
                  ),
                );
              },
              child: ListTile(
                  leading: IconCardWidget(icon: Icons.emoji_objects_outlined, color: Colors.black),
                  title: Text('Trainer'),
                ),
            ),
            SizedBox(height:10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return SquatRack();
                    },
                  ),
                );
              },
              child: ListTile(
                  leading: IconCardWidget(icon: Icons.emoji_objects_outlined, color: Colors.black),
                  title: Text('Squat Rack'),
                ),
            ),
            SizedBox(height:10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return Barbell();
                    },
                  ),
                );
              },
              child: ListTile(
                  leading: IconCardWidget(icon: Icons.emoji_objects_outlined, color: Colors.black),
                  title: Text('Barbell'),
                ),
            ),
            SizedBox(height:10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return TreadMill();
                    },
                  ),
                );
              },
              child: ListTile(
                  leading: IconCardWidget(icon: Icons.emoji_objects_outlined, color: Colors.black),
                  title: Text('Treadmill'),
                ),
            ),
            SizedBox(height:10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return ModelView();
                    },
                  ),
                );
              },
              child: ListTile(
                  leading: IconCardWidget(icon: Icons.emoji_objects_outlined, color: Colors.black),
                  title: Text('Leg Press'),
                ),
            ),
            SizedBox(height:10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return ModelView();
                    },
                  ),
                );
              },
              child: ListTile(
                  leading: IconCardWidget(icon: Icons.emoji_objects_outlined, color: Colors.black),
                  title: Text('Butterfly Machine'),
                ),
            ),
            SizedBox(height:10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return ModelView();
                    },
                  ),
                );
              },
              child: ListTile(
                  leading: IconCardWidget(icon: Icons.emoji_objects_outlined, color: Colors.black),
                  title: Text('Barbell Rack'),
                ),
            ),
            SizedBox(height:10),
          ],
        ),
      ),
    );
  }
}
