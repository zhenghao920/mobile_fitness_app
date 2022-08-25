// import 'package:fitness_ui_kit/pages/Nutrition/Tab/breakfast_tab.dart';
// import 'package:fitness_ui_kit/pages/Nutrition/foods_with_nutrition.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class AddBreakfast extends StatefulWidget {
//   const AddBreakfast({Key? key}) : super(key: key);

//   @override
//   _AddBreakfastState createState() => _AddBreakfastState();
// }

// class _AddBreakfastState extends State<AddBreakfast> {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//         create: (context) => FoodsProvider(),
//         child: Scaffold(
//             appBar: AppBar(
//               title: Text('Add'),
//               actions: [
//                 IconButton(
//                   icon: Icon(Icons.star),
//                   onPressed: () {
//                     // Navigator.push(
//                     //     context,
//                     //     MaterialPageRoute(
//                     //       builder: (context) => BreakfastTab(
//                     //         tabName: 'ABC',
//                     //       ),
//                     //     ));
//                   },
//                 ),
//               ],
//             ),
//             body: Builder(builder: (BuildContext newContext) {
//               return SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Text(newContext.read<FoodsProvider>().count.toString()),
//                     Text(newContext
//                         .read<FoodsProvider>()
//                         .items
//                         .length
//                         .toString()),
//                     ListView.builder(
//                       itemCount: newContext.read<FoodsProvider>().items.length,
//                       shrinkWrap: true,
//                       physics: NeverScrollableScrollPhysics(),
//                       itemBuilder: (context, index) {
//                         return ListTile(
//                             onTap: () {
//                               Foods foodModel = new Foods(
//                                   foodName: foodList1[index]['food'],
//                                   calories: foodList1[index]['calories'],
//                                   protein: foodList1[index]['protein'],
//                                   fat: foodList1[index]['fat'],
//                                   sodium: foodList1[index]['sodium']);

//                               setState(() {
//                                 newContext
//                                     .read<FoodsProvider>()
//                                     .deleteItems(foodModel);
//                               });
//                               print('deleted.');
//                             },
//                             title: Text(newContext
//                                 .read<FoodsProvider>()
//                                 .items[index]
//                                 .foodName),
//                             subtitle: Text(newContext
//                                 .read<FoodsProvider>()
//                                 .items[index]
//                                 .calories),
//                             trailing: Icon(Icons.delete_forever_outlined));
//                       },
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     ListView.builder(
//                       shrinkWrap: true,
//                       physics: NeverScrollableScrollPhysics(),
//                       itemCount: foodList1.length,
//                       itemBuilder: (context, index) {
//                         return ListTile(
//                           onTap: () {
//                             newContext.read<FoodsProvider>().addCount();
//                             // print(bookmarkBloc.count);
//                             Foods foodModel = new Foods(
//                                 foodName: foodList1[index]['food'],
//                                 calories: foodList1[index]['calories'],
//                                 protein: foodList1[index]['protein'],
//                                 fat: foodList1[index]['fat'],
//                                 sodium: foodList1[index]['sodium']);

//                             // ItemModel itemModel = new ItemModel(
//                             //   title: itemsList[index]['title'],
//                             //   subTitle: itemsList[index]['subtitle'],
//                             // );

//                             newContext
//                                 .read<FoodsProvider>()
//                                 .addItems(foodModel);

//                             // print(
//                             //     newContext.read<FoodsProvider>().items[index].foodName);
//                             // print(newContext.read<FoodsProvider>().items.length);

//                             setState(() {
//                               foodList1[index]['status'] = "true1";
//                             });
//                           },
//                           title: Text(foodList1[index]['food']),
//                           subtitle: Text(foodList1[index]['calories']),
//                           trailing: foodList1[index]['status'] == "false1"
//                               ? Icon(Icons.star_border)
//                               : Icon(
//                                   Icons.star,
//                                   color: Colors.blue,
//                                 ),
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               );
//             })));
//   }
// }
