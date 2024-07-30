import 'package:flutter/material.dart';
import 'package:flutter_application_2/details.dart';
import 'package:flutter_application_2/homepage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
        routes: {"Details": (context) => Details()});
  }
}
