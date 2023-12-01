/// Uses GetX with [GDSCThemeManager] to change the theme of the app dynamically.

import 'package:flutter/material.dart';
import 'package:gdsc_ys_color/gdsc_ys_color.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class ThemeController extends GetxController {
  ThemeController({GDSCThemeColor defaultColor = GDSCThemeColor.blue}) {
    theme = GDSCTheme(currentTheme: defaultColor);
  }

  late GDSCTheme theme;

  ThemeData get themeData => theme.getThemeData();

  /// Sets the current theme of the app.
  set setTheme(GDSCThemeColor themeColor) {
    theme = GDSCTheme(currentTheme: themeColor);
    update();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Bind the ThemeController
    return GetBuilder<ThemeController>(
        init: ThemeController(),
        builder: (themeController) {
          return GetMaterialApp(
            title: 'Flutter Demo',
            // Use GetX to reactively update the theme
            theme: themeController.themeData,
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
          );
        });
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

  final _themeController = Get.find<ThemeController>();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _changeTheme(GDSCThemeColor themeColor) {
    // Use GetX to update the theme
    _themeController.setTheme = themeColor;
  }

  void Function() _onPressThemeChanger(GDSCThemeColor colortheme) {
    return () => _changeTheme(colortheme);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            _themeController.theme.getThemeData().appBarTheme.backgroundColor,
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
                    onPressed: _onPressThemeChanger(GDSCThemeColor.blue),
                    icon:
                        const Icon(Icons.palette, color: GDSCPalette.blue500)),
                IconButton(
                    onPressed: _onPressThemeChanger(GDSCThemeColor.green),
                    icon:
                        const Icon(Icons.palette, color: GDSCPalette.green500)),
                IconButton(
                    onPressed: _onPressThemeChanger(GDSCThemeColor.red),
                    icon: const Icon(
                      Icons.palette,
                      color: GDSCPalette.red500,
                    )),
                IconButton(
                    onPressed: _onPressThemeChanger(GDSCThemeColor.yellow),
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
        backgroundColor:
            _themeController.theme.colors.button.primary.background.common,
        foregroundColor:
            _themeController.theme.colors.button.primary.label.common,
        child: const Icon(Icons.add),
      ),
    );
  }
}
