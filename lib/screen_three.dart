import 'package:flutter/material.dart';
import 'package:navigation_and_routing/home_screen.dart';

class ScreenThree extends StatefulWidget {
  static const String id = 'screen_three';

  final String name;
  final int number;

  const ScreenThree({Key? key,
    required this.name,
    required this.number,
  }) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.green
                ),
                child: const Center(
                  child: Text('Screen 3'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
