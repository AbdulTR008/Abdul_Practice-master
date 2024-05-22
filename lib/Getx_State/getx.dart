import 'package:abdebricks/Getx_State/getx_animation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BottomSheet1 extends StatelessWidget {
  const BottomSheet1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                //                   ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(
                //       content: Text(message),
                //       duration: Duration(seconds: 2), // Adjust the duration as needed
                //     ),
                //   );
                // }

                Get.snackbar('Flutter', 'GetX State Management',
                    duration: Duration(seconds: 1),
                    snackPosition: SnackPosition.TOP,
                    backgroundColor: Colors.white);
              },
              child: Text('SnackBar')),
          ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: 'GetX State Management',
                    content: Text('In FLutter'),
                    backgroundColor: Colors.white);
              },
              child: Text('DiaLog')),
          ElevatedButton(
              onPressed: () {
                Get.to(
                  AnimationGetX(),
                  curve: Curves.bounceInOut,
                  duration: Duration(seconds: 1),
                  transition: Transition.zoom,
                );
              },
              child: Text('AnimationScreen')),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                    Wrap(children: [
                      ListTile(
                        leading: const Icon(Icons.light_mode),
                        title: Text('Dark'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                      ListTile(
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                        leading: Icon(Icons.dark_mode),
                        title: Text('Light'),
                      )
                    ]),
                    elevation: 6,
                    backgroundColor: Colors.redAccent);
              },
              child: Text('BottomSheet'),
            ),
          ),
        ],
      ),
    );
  }
}
