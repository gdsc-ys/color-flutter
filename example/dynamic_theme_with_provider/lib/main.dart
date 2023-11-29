/// Uses Provider with [GDSCThemeManager] to change the theme of the app dynamically.

import 'package:flutter/material.dart';
import 'package:gdsc_ys_color/gdsc_ys_color.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => GDSCThemeManager(defaultColor: GDSCColorTheme.green),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<GDSCThemeManager>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeManager.themeData,
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
    Provider.of<GDSCThemeManager>(context, listen: false).setTheme(themeColor);
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