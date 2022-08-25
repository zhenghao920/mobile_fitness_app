import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({ Key? key, required this.icon, this.onPressed }) : super(key: key);

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 45.0,
        height: 45.0,
      ),
      shape: CircleBorder(),
      fillColor: secondary
    );
  }
}