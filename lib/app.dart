import 'package:flutter/material.dart';

class AppRunner {
  static Future<void> run() async {
    WidgetsFlutterBinding.ensureInitialized();

    runApp(MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
