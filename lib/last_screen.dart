import 'package:flutter/material.dart';

class last_screen extends StatefulWidget {
  const last_screen({super.key});

  @override
  State<last_screen> createState() => _last_screenState();
}

class _last_screenState extends State<last_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Center(
          child: Column(
            children: [
              Text("maazakbar")
            ],
          ),
        ),
      ),
    );
  }
}
