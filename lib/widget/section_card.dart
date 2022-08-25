// import 'package:flutter/material.dart';

// class SectionCard extends StatelessWidget {
//   final List<Widget> horizontalList;
//   final String title;

//   const SectionCard({Key? key, required this.horizontalList, required this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 35.0),
//       child: Column(
//         children: <Widget>[
//           SectionTitle((this.title != null ) ? this.title : ''),
//           SingleChildScrollView(
//             padding: EdgeInsets.only(left: 20.0, top: 10.0),
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: (this.horizontalList != null ) ? this.horizontalList : []
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class SectionTitle extends StatelessWidget {
//   final String _text;

//   SectionTitle(this._text);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(left: 20.0),
//       child: Align(
//         alignment: Alignment.bottomLeft,
//         child: Text(
//           this._text,
//           style: TextStyle(
//             fontSize: 14.0,
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//       ),
//     );
//   }
// }