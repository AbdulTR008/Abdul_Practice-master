// import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class RiverPodScreen1 extends ConsumerWidget {
//   const RiverPodScreen1({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.primary,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               color: Colors.orangeAccent,
//               height: 50,
//               width: 100,
//               child: Center(
//                 child: Text(
//                   'Count : ${ref.watch(count)} ',
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   ref.read(count.notifier).increment();
//                 },
//                 child: Text('Increment')),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => RiverPodScreen12(),
//                     ),
//                   );
//                 },
//                 child: Text('Screen 2')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class RiverPodScreen12 extends ConsumerWidget {
//   const RiverPodScreen12({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.primary,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               color: const Color.fromARGB(255, 64, 255, 153),
//               height: 50,
//               width: 100,
//               child: Center(
//                 child: Text(
//                   'Count : ${ref.watch(count)} ',
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   ref.read(count.notifier).decrement();
//                 },
//                 child: Text('Decrement')),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => RiverPodScreen1(),
//                     ),
//                   );
//                 },
//                 child: Text('Screen 1')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class RiverPod extends StateNotifier<int> {
//   RiverPod(int value) : super(value);

//   increment() => state++;
//   decrement() => state--;
// }

// final count = StateNotifierProvider<RiverPod, int>(
//   (ref) => RiverPod(0),
// );
