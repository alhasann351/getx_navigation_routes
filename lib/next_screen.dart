import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation_routes/screen.dart';

class NextScreen extends StatefulWidget {
  final String name;
  const NextScreen({super.key, this.name=''});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'Next Screen${widget.name}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 250,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    //Get.back();
                    Get.to(const Screen());
                  },
                  child: const Text(
                    'Go to Home Page',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
