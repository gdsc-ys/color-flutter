// Example flutter code which uses .withOpacity() to create a new color with a different opacity:

import 'package:flutter/material.dart';

import 'package:gdsc_ys_color/gdsc_ys_color.dart';

void main() {
  runApp(
    OpacitySliderExample(),
  );
}

class OpacitySliderExample extends StatefulWidget {
  @override
  _OpacitySliderExampleState createState() => _OpacitySliderExampleState();
}

class _OpacitySliderExampleState extends State<OpacitySliderExample> {
  double _opacity = 0.5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: GDSCPalette.blue500.withOpacity(_opacity),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Opacity: ${(_opacity * 100).round()}%",
                  style: TextStyle(
                    color: GDSCPalette.black,
                  ),
                ),
                Slider(
                  value: _opacity,
                  onChanged: (value) {
                    setState(() {
                      _opacity = value;
                    });
                  },
                  activeColor: GDSCPalette.yellow500,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}