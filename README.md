# color_flutter

Semantic Color System Package for GDSC Yonsei Chapter.

For additional infos, refer to [GDSC Yonsei chapter color system Figma page](https://www.figma.com/file/wFwdtlpxKDz3CUCyx8cJIJ/GDSC-Yonsei-Semantic-Color-System?type=design&node-id=93%3A1497&mode=design&t=enoXVWRtDLX0KXZM-1).

## ⚙️ Installation

This package can be installed by adding `gdsc-ys-color` to your pubspec.yaml

```
flutter pub add gdsc_ys_color
```

or by adding this line to your dependencies and running `flutter pub get` in your terminal.

```
dependencies:
  gdsc_ys_color: ^0.0.1
```

Now you can use it by importing `gdsc_ys_color.dart` in your dart file.

```dart
import 'package:gdsc_ys_color/gdsc_ys_color.dart';
```

## 👟 QuickStart

You can use this package by importing `gdsc_ys_color.dart` and using `GDSCTheme` class.   
When you create a new instance of `GDSCTheme`, you can specify which theme you want to use.   
`GDSCColorTheme` enum contains all the themes available. (Currently blue, green, yellow, red are available.)   

```dart
import 'package:flutter/material.dart';
import 'package:gdsc_ys_color/gdsc_ys_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GDSCTheme theme = GDSCTheme(currentTheme: GDSCColorTheme.blue);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GDSC Theme Demo',
      theme: theme.getTheme(), // This returns current theme's ThemeData object.
      home: const MyHomePage(title: 'GDSC Theme Demo'),
    );
  }
}
```

## 🔧 Usage

### 1. Semantic Colors 👩‍🎨

```dart
ElevatedButton(
  onPressed: _incrementCounter,
  child: Text('button',
      style: TextStyle(
          color: theme.colors.button.primary.label.common)),
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(
      theme.colors.button.primary.background.common
    ),
  )
),
```

Semantic colors are color tokens which named after what they represents.   
`gdsc_ys_color` package provides semantic colors for following use cases.   

| Name       | Description                                     |
| ---------- | ----------------------------------------------- |
| content    | Common colors for components like text or icon. |
| background | Defines background colors.                      |
| button     | Defines button colors.                          |
| textButton | Defines text button colors.                     |
| border     | Defines border colors.                          |
| line       | Defines line colors                             |
| tag        | Defines tag colors.                             |
| tabBar     | Defines tab bar colors.                         |

To use semantic colors, we recommend using `GDSCTheme` with state management packages like `GetX` or `Provider`.    
You can use semantic colors by calling `theme.colors` and accessing the color you want to use.    

### 2. Using Themes 🎨

#### 2.1 Usage with `GetX`

When using `GetX`, you can use `GDSCTheme` class using `GetxController`.    

The example code below shows how to use `GDSCTheme` with `GetX`. Runnable example can be found in [example](./example/lib/dynamic_theme_with_getx.dart).    

```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gdsc_ys_color/gdsc_ys_color.dart';

...

class ThemeController extends GetxController {
  ...
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
            theme: themeController.themeData,
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
          );
        });
  }
}

...

class MyHomePage extends StatelessWidget {
  // Access the ThemeController by calling Get.find<ThemeController>()
  final _themeController = Get.find<ThemeController>();
  ...
    floatingActionButton: FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      // access current theme's semantic colors by calling theme.colors
      backgroundColor:
          _themeController.theme.colors.button.primary.background.common,
      foregroundColor:
          _themeController.theme.colors.button.primary.label.common,
      child: const Icon(Icons.add),
    )
  ...
}
```

#### 2.2 Usage with `Provider`

When using `Provider`, you can use `GDSCTheme` class using `ChangeNotifier`.    
The `ChangeNotifier` is already exported from `gdsc_ys_color.dart`. You can use it as `GDSCThemeManager`.    

Example code below shows how to use `GDSCTheme` with `Provider`. Runnable example can be found in [example](./example/lib/dynamic_theme_with_provider.dart).    

```dart
import 'package:flutter/material.dart';
import 'package:gdsc_ys_color/gdsc_ys_color.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => GDSCThemeManager(defaultColor: GDSCThemeColor.green),
    child: const DynamicThemeWithProviderExample(),
  ));
}
...
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

...

class _MyHomePageState extends State<MyHomePage> {
  ...

  @override
  Widget build(BuildContext context) {
    // Access the ThemeController by calling Provider.of<ThemeController>(context)
    final themeManager = Provider.of<GDSCThemeManager>(context);
    ...
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        // access current theme's semantic colors by calling theme.colors
        backgroundColor:
            themeManager.theme.colors.button.primary.background.common,
        foregroundColor: themeManager.theme.colors.button.primary.label.common,
        child: const Icon(Icons.add),
      ),
    ...
  }
}
```

#### 2.3 Accessing `ThemeData` directly

GDSCTheme exports predefined `ThemeData` which is compatiable with `MaterialApp`'s `theme` property.
You can access the theme directly by specifying which theme you want to use.

```dart
import 'package:flutter/material.dart';
import 'package:gdsc_ys_color/gdsc_ys_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: GDSCTheme.green, // Set to your preferred theme
      home: const MyHomePage(title: 'GDSC Theme Demo'),
    );
  }
}
```
