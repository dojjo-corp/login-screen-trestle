import 'package:flutter/material.dart';
import 'package:login_screen/pages/login_screen.dart';
import 'package:login_screen/pages/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Screen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey[800]!),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: const {
        // 'login': WidgetBuilder.LoginScreen.(BuildContext),
      },
    );
  }
}
