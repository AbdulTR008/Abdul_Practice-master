// import 'package:flutter/material.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';

// class BlocScreen extends StatelessWidget {
//   const BlocScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
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
//                 child: BlocBuilder<BlocCounter, int>(
//                   builder: (context, count) => Text(
//                     'Count : $count ',
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   BlocProvider.of<BlocCounter>(context).add(IncrementEvent());
//                 },
//                 child: const Text('Increment')),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => BlocScreen2(),
//                     ),
//                   );
//                 },
//                 child: const Text('Screen 2')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class BlocScreen2 extends StatelessWidget {
//   const BlocScreen2({super.key});

//   @override
//   Widget build(BuildContext context) {
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
//                 child: BlocBuilder<BlocCounter, int>(
//                   builder: (context, count) => Text(
//                     'Count : $count ',
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   BlocProvider.of<BlocCounter>(context).add(DecrementEvent());
//                 },
//                 child: const Text('Decrement')),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => BlocScreen(),
//                     ),
//                   );
//                 },
//                 child: const Text('Screen 1')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// abstract class CounterEvent {}

// class IncrementEvent extends CounterEvent {}

// class DecrementEvent extends CounterEvent {}

// class BlocCounter extends Bloc<CounterEvent, int> {
//   BlocCounter(state) : super(0) {
//     on<IncrementEvent>((event, emit) {
//       emit(state++);
//     });
//     on<DecrementEvent>((event, emit) {
//       emit(state--);
//     });
//   }
// }
