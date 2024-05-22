import 'package:abdebricks/Getx_State/getx.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AnimationGetX extends StatelessWidget {
  const AnimationGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
          child: ElevatedButton(
        child: Text('Screen 1'),
        onPressed: () => Get.to(BottomSheet1()),
      )),
    );
  }
}
