/// Uses GetX with [GDSCThemeManager] to change the theme of the app dynamically.

import 'package:flutter/material.dart';
import 'package:gdsc_ys_color/gdsc_ys_color.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Bind the ThemeController

    return GetMaterialApp(
      title: 'Flutter Demo',
      // Use GetX to reactively update the theme
      theme: GDSCTheme.green,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _changeTheme(GDSCColorTheme themeColor) {
    switch (themeColor) {
      case GDSCColorTheme.red:
        Get.changeTheme(GDSCTheme.red);
        break;
      case GDSCColorTheme.yellow:
        Get.changeTheme(GDSCTheme.yellow);
        break;
      case GDSCColorTheme.green:
        Get.changeTheme(GDSCTheme.green);
        break;
      case GDSCColorTheme.blue:
        Get.changeTheme(GDSCTheme.blue);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () => _changeTheme(GDSCColorTheme.blue),
                    icon:
                        const Icon(Icons.palette, color: GDSCPalette.blue500)),
                IconButton(
                    onPressed: () => _changeTheme(GDSCColorTheme.green),
                    icon:
                        const Icon(Icons.palette, color: GDSCPalette.green500)),
                IconButton(
                    onPressed: () => _changeTheme(GDSCColorTheme.red),
                    icon: const Icon(
                      Icons.palette,
                      color: GDSCPalette.red500,
                    )),
                IconButton(
                    onPressed: () => _changeTheme(GDSCColorTheme.yellow),
                    icon: const Icon(Icons.palette,
                        color: GDSCPalette.yellow800)),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
