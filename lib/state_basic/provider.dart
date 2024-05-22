// import 'package:flutter/material.dart';

// import 'package:provider/provider.dart';

// class ProvideScreen extends StatelessWidget {
//   String testData = 'Provider';

//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     appBar: AppBar(
//   //       centerTitle: true,
//   //       title: Text(testData),
//   //     ),
//   //     body: Provider.value(
//   //       value: testData,
//   //       child: Level1(),
//   //     ),
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => MyText(),
//       child: Level(),
//     );
//   }
// }

// class Level extends StatelessWidget {
//   const Level({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(Provider.of<MyText>(context).newData),
//       ),
//       body: Level1(),
//     );
//   }
// }

// class Level1 extends StatelessWidget {
//   Level1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Level2();
//   }
// }

// class Level2 extends StatelessWidget {
//   Level2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: TextField(
//             onChanged: (newValue) {
//               Provider.of<MyText>(context, listen: false).updateTitle(newValue);
//             },
//           ),
//         ),
//         Level3(),
//         // Text('test')
//       ],
//     );
//   }
// }

// class Level3 extends StatelessWidget {
//   Level3({this.level3, super.key});
//   String? level3;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.grey,
//         height: 50,
//         width: 200,
//         child: Center(
//             child: Text(Provider.of<MyText>(context).newData.toString())));
//   }
// }

// class MyText extends ChangeNotifier {
//   String newData = 'Provider';

//   void updateTitle(String resData) {
//     newData = resData;
//     notifyListeners();
//   }
// }


// /***************************************************************************************************** */

// // class ProvideScreen extends StatelessWidget {
// //   String testData = 'Provider';

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         centerTitle: true,
// //         title: Text(testData),
// //       ),
// //       body: Level1(
// //         level1: testData,
// //       ),
// //     );
// //   }
// // }

// // class Level1 extends StatelessWidget {
// //   Level1({this.level1, super.key});

// //   String? level1;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Level2(
// //       level2: level1,
// //     );
// //   }
// // }

// // class Level2 extends StatelessWidget {
// //   Level2({this.level2, super.key});
// //   String? level2;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         Level3(
// //           level3: level2,
// //         ),
// //         // Text('test')
// //       ],
// //     );
// //   }
// // }

// // class Level3 extends StatelessWidget {
// //   Level3({this.level3, super.key});
// //   String? level3;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Center(
// //       child: Text(
// //         level3.toString(),
// //       ),
// //     );
// //   }
// // }
