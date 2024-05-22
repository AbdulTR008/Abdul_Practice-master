import 'package:abdebricks/Getx_State/getx.dart';
import 'package:abdebricks/bricks_screens/list_collapse/list_collapse.dart';
import 'package:abdebricks/state_basic/bloc.dart';
import 'package:abdebricks/state_basic/river_pod.dart';
import 'package:flutter/material.dart';

import 'package:abdebricks/bricks_screens/my_bricks_screen.dart';
// import 'package:abdebricks/state_management/provider.dart';
import 'package:abdebricks/state_basic/getx.dart';
import 'package:get/get.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomSheet1(),
    );
  }
}



  //  const CollapseListScreen(),

      // RiverPodScreen1(),

      // GetxScreen(),

      //MyBricksScreen(),

      // ProvideScreen(),