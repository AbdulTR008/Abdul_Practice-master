// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class GetxScreen extends StatelessWidget {
//   const GetxScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final mainController = Get.put(GetXService());

//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.primary,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Obx(
//               () => Container(
//                 color: Colors.orangeAccent,
//                 height: 50,
//                 width: 100,
//                 child: Center(
//                   child: Text(
//                     'Count : ${mainController.count}',
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   mainController.add();
//                 },
//                 child: Text('Increment')),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   Get.to(GetxScreen2());
//                 },
//                 child: Text('Screen 2')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class GetxScreen2 extends StatelessWidget {
//   const GetxScreen2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final secController = Get.put(GetXService());

//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.primary,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Obx(
//               () => Container(
//                 color: const Color.fromARGB(255, 64, 255, 153),
//                 height: 50,
//                 width: 100,
//                 child: Center(
//                   child: Text(
//                     'Count : ${secController.count} ',
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   secController.minus();
//                 },
//                 child: Text('Decrement')),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   Get.to(GetxScreen());
//                 },
//                 child: Text('Screen 1')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class GetXService extends GetxController {
//   var count = 0.obs;

//   add() {
//     count++;
//   }

//   minus() {
//     count--;
//   }
// }
