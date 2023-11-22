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
  GDSCTheme theme = GDSCTheme(
    currentTheme: GDSCColorTheme.yellow,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme.getTheme(),
      home: Scaffold(
        body: Center(
          child: Container(
            color: theme.getTheme().primaryColor.withOpacity(_opacity),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Opacity: ${(_opacity * 100).round()}%",
                  style: TextStyle(
                    color: theme.contentColors.gray.a3,
                  ),
                ),
                Slider(
                  value: _opacity,
                  onChanged: (value) {
                    setState(() {
                      _opacity = value;
                    });
                  },
                  // activeColor: theme.getTheme().primaryColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          theme.current = GDSCColorTheme.blue;
                        });
                      },
                      child: const Text("Blue"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          theme.current = GDSCColorTheme.green;
                        });
                      },
                      child: const Text("Green"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          theme.current = GDSCColorTheme.yellow;
                        });
                      },
                      child: const Text("Yellow"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          theme.current = GDSCColorTheme.red;
                        });
                      },
                      child: const Text("Red"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}