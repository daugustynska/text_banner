import 'dart:async';

import 'package:flutter/material.dart';

class ShowDrawerIcon extends StatefulWidget {
  const ShowDrawerIcon({super.key});

  @override
  State<ShowDrawerIcon> createState() => _ShowDrawerIconState();
}

class _ShowDrawerIconState extends State<ShowDrawerIcon> {
  bool showIcon = false;

  void showIconOnTap() {
    setState(() {
      showIcon = true;
    });

    Timer(const Duration(seconds: 3), () {
      setState(() {
        showIcon = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: showIconOnTap,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tap Icon Demo'),
        ),
        body: Center(
          child: Stack(
            children: [
              if (showIcon)
                const Positioned(
                  top: 0,
                  child: Icon(
                    Icons.arrow_right,
                    size: 48,
                    color: Colors.white,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
