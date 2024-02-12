import 'package:flutter/material.dart';
import 'package:qisthi_sm/screens/home/_index.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(colorScheme: const ColorScheme.dark()),
      home: const HomeView(),
    );
  }
}
