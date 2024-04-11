import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation_routes/next_screen.dart';
import 'package:getx_navigation_routes/screen.dart';

import 'my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      getPages: [
        GetPage(name: '/', page: () => const MyHomePage()),
        GetPage(name: '/nextScreen', page: () => NextScreen()),
        GetPage(name: '/screen', page: () => const Screen()),
      ],
    );
  }
}
