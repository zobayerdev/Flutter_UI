import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/app_behavour.dart';
import 'package:flutter_ui/screen_one.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        tools: const [
          ...DevicePreview.defaultTools,
        ],
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter On-Boarding UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      scrollBehavior: AppScrollBehavior(),
      home: ScreenOne(),
    );
  }
}
