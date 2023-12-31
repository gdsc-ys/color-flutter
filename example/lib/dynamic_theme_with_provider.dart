/// Uses Provider with [GDSCThemeManager] to change the theme of the app dynamically.

import 'package:flutter/material.dart';
import 'package:gdsc_ys_color/gdsc_ys_color.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => GDSCThemeManager(defaultColor: GDSCThemeColor.green),
    child: const DynamicThemeWithProviderExample(),
  ));
}

class DynamicThemeWithProviderExample extends StatelessWidget {
  const DynamicThemeWithProviderExample({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<GDSCThemeManager>(context);
    return MaterialApp(
      title: 'GDSC Dynamic Theme with Provider',
      theme: themeManager.themeData,
      home: const MyHomePage(title: 'GDSC Dynamic Theme with Provider'),
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

  void _changeTheme(GDSCThemeColor themeColor) {
    Provider.of<GDSCThemeManager>(context, listen: false).setTheme(themeColor);
  }

  void Function() _onPressThemeChanger(GDSCThemeColor colortheme) {
    return () => _changeTheme(colortheme);
  }

  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<GDSCThemeManager>(context);

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
            themeManager.theme.colors.button.primary.background.common,
        foregroundColor: themeManager.theme.colors.button.primary.label.common,
        child: const Icon(Icons.add),
      ),
    );
  }
}
