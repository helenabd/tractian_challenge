import 'package:flutter/material.dart';

import '../app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tree View',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const InitialPage(),
    );
  }
}
